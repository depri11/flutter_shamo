class UserModel {
  int? id;
  String? fullname;
  String? email;
  String? username;
  String? avatar;
  String? token;

  UserModel(int id, String fullname, String email, String username,
      String avatar, String token);

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    fullname = json["fullname"];
    email = json["email"];
    username = json["username"];
    avatar = json["avatar"];
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "fullname": fullname,
      "email": email,
      "username": username,
      "avatar": avatar,
    };
  }
}
