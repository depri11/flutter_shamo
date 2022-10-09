class CategoryModel {
  int? id;
  String? name;

  CategoryModel(int? id, String? name);

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
