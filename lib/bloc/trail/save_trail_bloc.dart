import 'package:bloc/bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartflore/models/taxon/taxon_model.dart' as t;
import 'package:smartflore/models/trail/batch_trail_model.dart';
import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/repo/trail/trail_repo.dart';

part 'save_trail_event.dart';
part 'save_trail_state.dart';
part 'save_trail_bloc.freezed.dart';

class SaveTrailBloc extends Bloc<SaveTrailEvent, SaveTrailState> {
  final TrailRepo trailRepo;
  final Box<TrailDetails> trailBox;
  final Box<t.Taxon> taxonBox;

  SaveTrailBloc(this.trailRepo, this.trailBox, this.taxonBox)
      : super(const _Initial()) {
    late Box boxSavedTrail = Hive.box('savedTrails');

    /// SAVE TRAIL
    on<SaveTrailEvent>((event, emit) async {
      if (event is _SaveTrailLocally) {
        emit(const SaveTrailState.start());

        BatchedTrail? batchedTrail =
            await trailRepo.getTrailBatchedData(event.id);
        if (batchedTrail != null) {
          // save trial in the trail box
          await trailBox.put('trail_${event.id}', batchedTrail.trail);
          // save every single taxon of the trail in the taxon box

          // list all images for a trail
          List<t.ImageAPI> imageList = [];
          imageList.add(t.ImageAPI(
              id: batchedTrail.trail.image.id,
              url: batchedTrail.trail.image.url,
              author: ''));

          for (var taxon in batchedTrail.taxonList) {
            await taxonBox.put('taxon_${taxon.nameId}', taxon);
            for (var image in taxon.tabs[0].images!) {
              imageList.add(image);
            }
          }

          int nbImageSaved = 0;
          for (var image in imageList) {
            nbImageSaved += await _saveImage(image);
            emit(SaveTrailState.loading(
                nbImageSaved: nbImageSaved, nbImages: imageList.length));
          }

          boxSavedTrail.put('trail_${event.id}', true);

          emit(const SaveTrailState.loaded());
          await Future.delayed(const Duration(seconds: 2), () {})
              .whenComplete(() => emit(const SaveTrailState.initial()));
        }
      } else if (event is _UnSaveTrailLocally) {
        emit(const SaveTrailState.unSaveStart());
        trailBox.get('trail_${event.id}');
        BatchedTrail? batchedTrail =
            await trailRepo.getTrailBatchedData(event.id);
        List<t.ImageAPI> imageList = [];

        for (var taxon in batchedTrail!.taxonList) {
          for (var image in taxon.tabs[0].images!) {
            imageList.add(image);
          }
        }

        for (var image in imageList) {
          await _deleteImage(image);
        }
        boxSavedTrail.delete('trail_${event.id}');

        emit(const SaveTrailState.unSaveComplete());
      }
    });
  }

  Future<int> _saveImage(t.ImageAPI image) async {
    await DefaultCacheManager().getSingleFile(image.url, key: image.url);
    return 1;
  }

  Future<int> _deleteImage(t.ImageAPI image) async {
    await DefaultCacheManager().removeFile(image.url);
    return -1;
  }
}
