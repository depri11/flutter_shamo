class UserModel {
  int id = 0;
  String name = '';
  String email = '';
  String username = '';
  String avatar = '';
  String token = '';

  UserModel(int id, String name, String email, String username, String avatar,
      String token);

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    email = json["email"];
    username = json["username"];
    avatar = json["avatar"];
    token = json["token"];
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "username": username,
      "avatar": avatar,
      "token": token
    };
  }
}
