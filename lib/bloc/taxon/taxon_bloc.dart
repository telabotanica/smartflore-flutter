import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartflore/models/taxon/taxon_model.dart';
import 'package:smartflore/repo/taxon/taxon_repo.dart';

part 'taxon_event.dart';
part 'taxon_state.dart';

class TaxonBloc extends Bloc<TaxonEvent, TaxonState> {
  final TaxonRepo taxonRepo;

  TaxonBloc(this.taxonRepo) : super(TaxonInitialState()) {
    on<TaxonEvent>((event, emit) async {
      if (event is LoadTaxonDataEvent) {
        emit(TaxonLoadingState());
        var box = await Hive.openBox('taxon');
        Taxon? localTaxon = await box.get('taxon_${event.taxonID}');
        if (localTaxon != null) {
          emit(TaxonLoadedState(taxon: localTaxon));
        }

        Taxon? taxon = await taxonRepo.getTaxon(event.taxonRepo, event.taxonID);
        if (taxon != null) {
          await box.put('taxon_${event.taxonID}', taxon);
          emit(TaxonLoadedState(taxon: taxon));
        } else {
          emit(TaxonErrorState());
        }
      }
    });
  }
}
