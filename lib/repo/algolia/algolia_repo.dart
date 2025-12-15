class AlgoliaRepo {
  final AlgoliaRepo algoliaClient;

  AlgoliaRepo({required this.algoliaClient});

  Future<void> init() async {
    algoliaClient.init();
  }
}
