class ProductModel {
    final String imagePath;
    final String name;
    final int price;
    final int id;

  ProductModel({required this.imagePath, required this.name, required this.price, required this.id});
  factory ProductModel.fromJson(Map<String, dynamic> json){
    return ProductModel(imagePath:json["imagePath"], name: json["name"], price: json["price"], id: json["id"]);
  }
}