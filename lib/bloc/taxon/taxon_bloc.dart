import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smartflore/models/taxon/taxon-app-model.dart';
import 'package:smartflore/repo/taxon/taxon_repo.dart';

part 'taxon_event.dart';
part 'taxon_state.dart';

class TaxonBloc extends Bloc<TaxonEvent, TaxonState> {
  final TaxonRepo taxonRepo;

  TaxonBloc(this.taxonRepo) : super(TaxonInitialState()) {
    on<TaxonEvent>((event, emit) async {
      if (event is LoadTaxonDataEvent) {
        emit(TaxonLoadingState());
        Taxon? taxon = await taxonRepo.getTaxon(event.taxonRepo, event.taxonID);
        if (taxon != null) {
          emit(TaxonLoadedState(taxon: taxon));
        } else {
          emit(TaxonErrorState());
        }
      }
    });
  }
}
