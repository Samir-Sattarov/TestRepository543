class PhotoEntity {
  final int id;
  final String title;
  final String imageUrl;
  final String thumbnailUrl;

  PhotoEntity({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.thumbnailUrl,
  });

  factory PhotoEntity.fromJson(Map<String, dynamic> json) {
    return PhotoEntity(
      id: json['id'],
      title: json['title'],
      imageUrl: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}
