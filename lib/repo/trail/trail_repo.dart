import 'package:smartflore/models/create/create_model.dart';
import 'package:smartflore/models/trail/batch_trail_model.dart';
import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/repo/trail/trail_api_client.dart';
import 'package:smartflore/utils/data.dart';

class TrailRepo {
  final TrailApiClient trailApiClient;

  TrailRepo({required this.trailApiClient});

  Future<TrailDetails?> getTrailData(int id) async {
    final TrailDetails? trail = await trailApiClient.getTrailData(id);
    return trail;
  }

  Future<BatchedTrail?> getTrailBatchedData(int id) async {
    final BatchedTrail? trail = await trailApiClient.getTrailBatchedData(id);
    return trail;
  }

  Future<GenericRequestResponse> saveTrail(CreateTrail trail) async {
    return await trailApiClient.saveTrail(trail);
  }
}
