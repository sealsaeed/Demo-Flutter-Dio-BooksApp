class Book {
  int? id;
  String title;
  String description;
  String image;
  String price;

  Book(
      {this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.price});

  Book.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        title = json['title'] as String,
        description = json['description'] as String,
        image = json['image'] as String,
        price = json['price'] as String;
}
//  Map<String, dynamic>toJson(){
//     final Map<String,dynamic> json= <String,dynamic>{};
//     json['id'] = id; 
//     json['title'] = title;
//       json['description'] =description; 
//       json['image'] = image; 
//       json['price'] = price;
//   }