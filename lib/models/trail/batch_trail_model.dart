import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/models/taxon/taxon_model.dart' as t;

class BatchedTrail {
  final TrailDetails trail;
  final List<t.Taxon> taxonList;

  BatchedTrail(this.trail, this.taxonList);
}
