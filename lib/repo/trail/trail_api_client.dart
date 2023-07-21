import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:smartflore/models/create/create_model.dart';
import 'package:smartflore/models/trail/batch_trail_model.dart';
import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/repo/api_client.dart';
import 'package:smartflore/models/taxon/taxon_model.dart' as t;
import 'package:smartflore/utils/data.dart';

class TrailApiClient extends APIClient {
  final Client httpClient;
  final String baseUrl;
  final Function getUserInfo;

  TrailApiClient({required this.httpClient, required this.baseUrl, required this.getUserInfo});
  Future<TrailDetails?> getTrailData(int id) async {
    try {
      final response = await httpClient.get(Uri.parse('$baseUrl/trail/$id'));
      if (response.statusCode == 200) {
        String data = response.body;

        Map<String, dynamic> json = jsonDecode(data);

        TrailDetails trailData = TrailDetails.fromJson(json);

        return trailData;
      } else {
        // throw Exception('Failed to load trail list');
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  Future<BatchedTrail?> getTrailBatchedData(int id) async {
    final response = await httpClient.get(Uri.parse('$baseUrl/batch/trail/$id'));
    if (response.statusCode == 200) {
      String data = response.body;

      Map<String, dynamic> json = jsonDecode(data);

      TrailDetails trailDData = TrailDetails.fromJson(json);

      List<t.Taxon> taxonsList = [];
      if (json['occurrences'] != null) {
        List<dynamic>? list = json['occurrences'];
        list?.map((occurrence) {
          if (occurrence != null && occurrence['taxon'] != null) {
            taxonsList.add(t.Taxon.fromJson(occurrence['taxon']));
          }
        }).toList();
      }
      return BatchedTrail(trailDData, taxonsList);
    } else {
      // throw Exception('Failed to load trail list');
      return null;
    }
  }

  void printWrapped(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    debugPrint(':::::::::::::::::::::::::::');
    pattern.allMatches(text).forEach((match) => debugPrint(match.group(0)));
    debugPrint(':::::::::::::::::::::::::::');
  }

  Future<GenericRequestResponse> saveTrail(CreateTrail trail) async {
    try {
      debugPrint("=======> url: ${'$baseUrl/trail'}");
      debugPrint('=======> token:  ${getUserInfo().token}');

      dynamic test = await getHeaders(getUserInfo().token ?? '');
      debugPrint('=======> header: $test');

      String jsonConverted = trailConverter(jsonEncode(trail));
      log('=======> $jsonConverted');

      final response = await httpClient.post(Uri.parse('$baseUrl/trail'),
          body: jsonConverted, headers: await getHeaders(getUserInfo().token ?? ''));
      log('=======> response :: $response');

      if (response.statusCode == 200 || response.statusCode == 201) {
        String data = response.body;
        debugPrint('======> SAVE OK:: ${response.statusCode}');
        debugPrint('======> data :: $data');

        return GenericRequestResponse(success: true, statusCode: response.statusCode);
      } else {
        debugPrint('======> SAVE ERROR:: ${response.statusCode}');
        debugPrint('======> SAVE response:: ${response.body}');
        // throw Exception('Failed to load trail list');
        return GenericRequestResponse(success: false, message: response.body, statusCode: response.statusCode);
      }
    } catch (e) {
      debugPrint('======> CATCH ERROR:: $e');
      return GenericRequestResponse(success: false, message: e.toString(), statusCode: 600);
    }
  }

  String trailConverter(String trail) {
    final originalMap = jsonDecode(trail);

    final newMap = {
      'name': originalMap['name'],
      'position': {
        'start': originalMap['position']['start'],
        'end': originalMap['position']['end'],
      },
      'occurrences': originalMap['occurrences']
          .map((occurrence) => {
                'position': occurrence['position'],
                'scientific_name': occurrence['taxon']['scientific_name'],
                'name_id': occurrence['taxon']['name_id'],
                'taxon_repository': occurrence['taxon']['taxon_repository'],
                'image_id': (occurrence['images'] != null && occurrence['images'].length > 0)
                    ? occurrence['images'][0]['id']
                    : null
              })
          .toList(),
      'path': {
        'type': originalMap['path']['type'],
        'coordinates': originalMap['path']['coordinates']
            .map((coordinate) => {
                  'lat': coordinate['lat'],
                  'lng': coordinate['lng'],
                })
            .toList(),
      },
      'prm': originalMap['prm'],
      'best_season': originalMap['best_season'],
    };

    return jsonEncode(newMap);
  }
}
