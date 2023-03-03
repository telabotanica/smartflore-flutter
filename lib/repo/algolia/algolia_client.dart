import 'package:http/http.dart';
import 'package:smartflore/repo/api_client.dart';

class AlgoliaClient extends APIClient {
  final Client httpClient;
  final String baseUrl;

  AlgoliaClient({required this.httpClient, required this.baseUrl});

  init() async {
    /*final searcher = HitsSearcher(
      applicationID: AppEnv().algoliaAppId,
      apiKey: AppEnv().algoliaApiKey,
      indexName: AppEnv().algoliaIndex,
    );*/
  }

  getTaxons(String query) {}
}
