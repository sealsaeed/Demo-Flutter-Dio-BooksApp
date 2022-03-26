class Book {
  int? id;
  String title;
  String description;
  String image;
  double price;

  Book(
      {this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.price});
}
