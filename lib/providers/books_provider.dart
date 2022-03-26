import 'package:books_app/models/book.dart';
import 'package:flutter/material.dart';

class BooksProvider extends ChangeNotifier {
  List<Book> books = [
    Book(
        id: 1,
        title: "Six Of Crows",
        description:
            "Six of Crows is a fantasy novel written by the Israeli-American author Leigh Bardugo published by Henry Holt and Co. in 2015. The story follows a thieving crew and is primarily set in the city of Ketterdam, loosely inspired by Dutch Republic–era Amsterdam.",
        image:
            'https://images-na.ssl-images-amazon.com/images/I/71pX+JTU8EL.jpg',
        price: 45.5)
  ];
}
