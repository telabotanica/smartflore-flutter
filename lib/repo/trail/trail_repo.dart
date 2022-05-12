import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/repo/trail/trail_api_client.dart';

class TrailRepo {
  final TrailApiClient trailApiClient;

  TrailRepo({required this.trailApiClient});

  Future<Trail?> getTrailData(String id) async {
    final Trail? trail = await trailApiClient.getTrailData(id);
    return trail;
  }
}
