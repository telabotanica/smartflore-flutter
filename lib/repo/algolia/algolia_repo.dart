class AlgoliaRepo {
  final AlgoliaRepo algoliaClient;

  AlgoliaRepo({required this.algoliaClient});

  init() async {
    algoliaClient.init();
  }
}
