import 'package:smartflore/models/trails/trails_model.dart';
import 'package:smartflore/repo/trails/trails_api_client.dart';

class TrailsRepo {
  final TrailsApiClient trailsApiClient;

  TrailsRepo({required this.trailsApiClient});

  Future<List<Trail>?> getTrailList() async {
    final List<Trail>? trails = await trailsApiClient.getTrailList();

    return trails;
  }

  getMyTrailList() async {
    final List<Trail>? trails = await trailsApiClient.getMyTrailList();
    return trails;
  }
}
