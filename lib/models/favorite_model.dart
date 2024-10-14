class FavoriteModel {
  final int? id;
  final String title;
  final String date;
  final String time;
  final String status; // Pastikan status ada di sini

  FavoriteModel({
    this.id,
    required this.title,
    required this.date,
    required this.time,
    this.status = '', // Atau default value lain jika diperlukan
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'date': date,
      'time': time,
      'status': status, // Sertakan status di sini
    };
  }

  static FavoriteModel fromMap(Map<String, dynamic> map) {
    return FavoriteModel(
      id: map['id'],
      title: map['title'],
      date: map['date'],
      time: map['time'],
      status: map['status'], // Sertakan status di sini
    );
  }
}
