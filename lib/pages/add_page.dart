import 'package:books_app/models/book.dart';
import 'package:books_app/providers/books_provider.dart';
import 'package:books_app/widgets/add_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class AddPage extends StatelessWidget {
  AddPage({Key? key}) : super(key: key);
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionEditingController = TextEditingController();
  TextEditingController _priceTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add a book"),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text("Fill those field to add a book"),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Book title',
              ),
              controller: _titleController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please fill out this field";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'add Description',
              ),
              controller: _descriptionEditingController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please fill out this field";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'add price',
              ),
              controller: _priceTextEditingController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please fill out this field";
                } else {
                  return null;
                }
              },
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<BooksProvider>().createBook(
                        _descriptionEditingController.text as Book,
                        _priceTextEditingController.text,
                        _titleController,
                      );
                  context.pop();
                },
                child: Icon(Icons.abc))
          ],
        ),
      ),
    );
  }
}
