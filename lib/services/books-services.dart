import 'package:dio/dio.dart';

import '../models/book.dart';

class BooksServices {
  final _dio = Dio();
  final _baseUrl = "https://coded-books-api-crud.herokuapp.com";

  Future<List<Book>> getBooks() async {
    List<Book> books = [];
    try {
      Response res = await _dio.get(_baseUrl + '/books');

      books = (res.data as List).map((book) => Book.fromJson(book)).toList();
      print(books[1].title);
    } on DioError catch (error) {
      print(error);
    }
    return books;
  }
}
