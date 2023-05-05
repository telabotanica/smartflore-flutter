import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:smartflore/models/taxon/taxon_model.dart';
import 'package:smartflore/repo/taxon/taxon_repo.dart';

part 'taxon_event.dart';
part 'taxon_state.dart';
part 'taxon_bloc.freezed.dart';

class TaxonBloc extends Bloc<TaxonEvent, TaxonState> {
  final TaxonRepo taxonRepo;
  final Box<Taxon> taxonBox;

  TaxonBloc(this.taxonRepo, this.taxonBox) : super(const _Initial()) {
    on<TaxonEvent>((event, emit) async {
      await event.when(loadTaxonData: (repo, id) async {
        emit(const TaxonState.initial());
        emit(const TaxonState.loading());

        Taxon? localTaxon = taxonBox.get('taxon_$id');
        if (localTaxon != null) {
          emit(TaxonState.loaded(localTaxon));
        }

        Taxon? taxon = await taxonRepo.getTaxon(repo, id);
        if (taxon != null) {
          await taxonBox.put('taxon_$id', taxon);
          emit(TaxonState.loaded(taxon));
        }
      });
    });
  }
}
