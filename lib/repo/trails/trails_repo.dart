import 'package:smartflore/models/trails/trails_model.dart';
import 'package:smartflore/repo/trails/trails-api-client.dart';

class TrailsRepo {
  final TrailsApiClient trailsApiClient;

  TrailsRepo({required this.trailsApiClient});

  Future<Trails?> getTrailList() async {
    final Trails? trails = await trailsApiClient.getTrailList();
    return trails;
  }
}
