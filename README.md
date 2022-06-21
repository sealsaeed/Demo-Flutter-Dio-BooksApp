# Books Store App

## What is this demo?
    This demo covers Dio client (GET ONLY) and serlization 

## What are the objectives?
    Students will learn how to connect to and end point
## Steps

## Part 1: Setup
1. Show the response of this end point `https://coded-books-api-crud.herokuapp.com/books`
2. Go through the code
3. Create a folder called services
4. Create a file called books-services
5. Create a class called BookServices
6. Add dio `flutter pub add dio`
7. Initialize a new dio instance `final _dio = Dio();`

   
## Part 2: Get Books
dont forget to use cmd+shift+p => dart devtools network page to see requests and responces
9.  Create a function that returns void called getBooks()
``` dart 

  void getBooks() {
    Response res = _dio.get('https://coded-books-api-crud.herokuapp.com/books');
    print(res);
  }
```
10. Then in the BooksProvider call it 
```dart 
void getBooks() {
    BooksServices().getBooks();
  }
```
11. Make the button in the home_page call it 
12. In the console we see `Instance of 'Future<Response<dynamic>>'`
13. So lets fix that by making the function wait, add await and async
14. Now lets make that into an actual book list that we can use
15. We will have an error if we add `List<Book> res = await _dio.get('https://coded-books-api-crud.herokuapp.com/books');` we need to save that in a type Response 
16. try to save that in a List of books ` List<Book> books = res.data;` , we will have an error ``Unhandled Exception: type 'List<dynamic>' is not a subtype of type 'List<Book>'``
17. So lets add `as list` to the res.data
18. But noe we have an error that the `List<Book>` is not as `List<dynamic>` , so we need to convert to not just a List but a List of books
19. So we need serlization!

## Task - Part one which is only get the responce printed

## Part 3: Serlization
1. Thery part here 
2. Add the following packages `flutter pub add json_serializable ,  build_runner `
3. Go to the books model and add this before the class 
```dart 
import 'package:json_annotation/json_annotation.dart';

part 'book.g.dart';
@JsonSerializable()
```
3. Then run this in terminal `flutter pub run build_runner build`
4. Add the following code in the book model
```dart
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
  Map<String, dynamic> toJson() => _$BookToJson(this);
```
5. Go to the service and add the line 
 ` List<Book> books =(res.data as List).map((book) => Book.fromJson(book)).toList();`
6. Add try and catch in case of Dio Error `try{...}on DioError catch(error){...}`
7. Change return type to `List<Book>`, fix the function to return it
8. Will Still have an error becasue async functions must return type future `Future<List<Book>>`
9. finally lets fix the provider as well add async and await
