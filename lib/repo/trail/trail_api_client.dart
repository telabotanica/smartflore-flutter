import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:smartflore/models/create/create_model.dart';
import 'package:smartflore/models/trail/batch_trail_model.dart';
import 'package:smartflore/models/trail/trail_model.dart';
import 'package:smartflore/repo/api_client.dart';
import 'package:smartflore/models/taxon/taxon_model.dart' as t;

class TrailApiClient extends APIClient {
  final Client httpClient;
  final String baseUrl;
  final Function getUserInfo;

  TrailApiClient(
      {required this.httpClient,
      required this.baseUrl,
      required this.getUserInfo});
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
    final response =
        await httpClient.get(Uri.parse('$baseUrl/batch/trail/$id'));
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

  Future<bool> saveTrail(CreateTrail trail) async {
    try {
      debugPrint("=======> ${'$baseUrl/trail'}");
      debugPrint('=======> ${getUserInfo().token}');
      final response = await httpClient.post(Uri.parse('$baseUrl/trail'),
          body: jsonEncode(trail.toJson()),
          headers: await getHeaders(getUserInfo().token ?? ''));

      if (response.statusCode == 200) {
        String data = response.body;
        Map<String, dynamic> json = jsonDecode(data);
        json.toString();
        return true;
      } else {
        debugPrint('======> SAVE ERROR:: ${response.statusCode}');
        debugPrint('======> SAVE response:: $response');
        // throw Exception('Failed to load trail list');
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
