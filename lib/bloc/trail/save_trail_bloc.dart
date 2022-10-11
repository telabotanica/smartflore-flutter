import 'package:bloc/bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartflore/models/taxon/taxon_model.dart';
import 'package:smartflore/models/trail/batch_trail_model.dart';
import 'package:smartflore/repo/trail/trail_repo.dart';

part 'save_trail_event.dart';
part 'save_trail_state.dart';
part 'save_trail_bloc.freezed.dart';

class SaveTrailBloc extends Bloc<SaveTrailEvent, SaveTrailState> {
  final TrailRepo trailRepo;

  SaveTrailBloc(this.trailRepo) : super(const _Initial()) {
    on<SaveTrailEvent>((event, emit) async {
      if (event is _SaveTrailLocally) {
        emit(const SaveTrailState.initial());

        BatchedTrail? batchedTrail =
            await trailRepo.getTrailBatchedData(event.id);
        if (batchedTrail != null) {
          // save trial in the trail box
          var boxTrail = await Hive.openBox('trail');
          await boxTrail.put('trail_${event.id}', batchedTrail.trail);
          // save every single taxon of the trail in the taxon box
          var boxTaxon = await Hive.openBox('taxon');
          batchedTrail.taxonList.map((taxon) async {
            await boxTaxon.put('taxon_${taxon.nameId}', taxon);
            // batch download image files.
            taxon.tabs[0].images?.map((image) {
              //_saveImage(image);
            });
          });

          // list all images for a trail
          List<ImageAPI> imageList = [];
          imageList.add(ImageAPI(
              id: batchedTrail.trail.image.id,
              url: batchedTrail.trail.image.url,
              author: ''));

          for (var taxon in batchedTrail.taxonList) {
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

          var boxSavedTrail = await Hive.openBox('saved_trails');
          boxSavedTrail.put('trail_${event.id}', true);
        }
      }
    });
  }

  Future<int> _saveImage(ImageAPI image) async {
    await DefaultCacheManager()
        .getSingleFile(image.url, key: image.id.toString());
    return 1;
  }
}
