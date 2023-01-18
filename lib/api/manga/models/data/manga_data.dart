class MangaData {
  MangaData({
    required this.name,
    required this.author,
    required this.cover,
    required this.description,
    this.alternativeNames = const [],
    this.alternativeCovers = const [],
  });

  final String name;
  final String author;
  String cover;
  String description;
  List<String> alternativeNames;
  List<String> alternativeCovers;
}
