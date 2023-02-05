class CoffeeModel {
  late int id;
  late String title;
  late String description;
  late String ingredients;
  late String image;

  CoffeeModel(
      {this.id = 0,
      this.title = "",
      this.description = "",
      this.ingredients = "",
      this.image = ""});

  CoffeeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    ingredients = json['ingredients'];
    image = json['image'];
  }
}
