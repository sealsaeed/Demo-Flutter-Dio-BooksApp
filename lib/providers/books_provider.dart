import 'package:books_app/models/book.dart';
import 'package:books_app/services/books-services.dart';
import 'package:flutter/material.dart';

class BooksProvider extends ChangeNotifier {
  List<Book> books = [];

  Future<void> getBooks() async {
    books = await BooksServices().getBooks();
    notifyListeners();
  }
}
//  Future<void> getBooks() async {
//     books = await BooksServices().getBooks();
//   }