import 'package:f_random_user_runway_template/domain/entities/random_user.dart';

class AppUser {
  AppUser({
    this.id,
    required this.name,
    required this.url,
  });

  int? id;
  String name;
  String url;

  factory AppUser.fromJson(Map<String, dynamic> json) => AppUser(
        id: json["id"],
        name: json["name"] ?? "someName",
        url: json["url"] ?? "someUrl",
      );

  factory AppUser.fromRandomUser(RandomUser randomUser) => AppUser(
        id: randomUser.id,
        name: randomUser.name,
        url: randomUser.picture,
      );

  factory AppUser.empty() => AppUser(
        name: "",
        url: "",
      );

  Map<String, dynamic> toJson() => {
        "id": id ?? 0,
        "name": name,
        "url": url,
      };
}
