// ignore_for_file: deprecated_member_use

import 'package:books_app/models/book.dart';
import 'package:dio/dio.dart';

class BooksServices {
  final _baseUrl = 'https://coded-books-api-crud.eapi.joincoded.com';

  final _dio = Dio();

  Future<List<Book>> getBooks() async {
    List<Book> books = [];
    try {
      final response = await _dio.get(_baseUrl + '/books');
      books = books =
          (response.data as List).map((book) => Book.fromJson(book)).toList();
      return books;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<Book> createBook({required Book book}) async {
    late Book retrievedBook;
    try {
      FormData data = FormData.fromMap({
        "title": book.title,
        "description": book.title,
        "price": book.price,
      });
      Response response = await _dio.post(_baseUrl + '/books', data: data);
      retrievedBook = Book.fromJson(response.data);
    } on DioError catch (error) {
      print(error);
    }
    return retrievedBook;
  }
}
