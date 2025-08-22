class UserProfile {
  final String name;
  final String email;
  final String phoneNumber;
  String? photoUrl;

  UserProfile({
    required this.name,
    required this.email,
    required this.phoneNumber,
    this.photoUrl,
  });
}