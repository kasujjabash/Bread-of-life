class Devotion {
  String id;
  String title;
  String scripture;
  String date;
  // String imageUrl;
  String description;
  String prayer;

  Devotion({
    required this.id,
    required this.title,
    required this.scripture,
    required this.date,
    // required this.imageUrl,
    required this.description,
    required this.prayer,
  });

  factory Devotion.fromMap(String id, Map<String, dynamic> map) {
    return Devotion(
      id: id,
      title: map['title']?.toString() ?? '',
      scripture: map['scripture']?.toString() ?? '',
      date: map['date']?.toString() ?? '',
      description: map['description']?.toString() ?? '',
      prayer: map['prayer']?.toString() ?? '',
    );
  }
}
