import 'package:books_app/providers/books_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UpdatePage extends StatelessWidget {
  TextEditingController _titleController = TextEditingController();

  TextEditingController _descriptionEditingController = TextEditingController();

  TextEditingController _priceTextEditingController = TextEditingController();

  UpdatePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update a book"),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text("Fill those field to update a book"),
            SizedBox(
              height: 30,
            ),
            Text("update title: "),
            TextField(
              controller: _titleController,
            ),
            SizedBox(
              height: 30,
            ),
            Text("update description: "),
            TextField(
              controller: _descriptionEditingController,
            ),
            SizedBox(
              height: 30,
            ),
            Text("update price: "),
            TextField(
              controller: _priceTextEditingController,
            ),
            SizedBox(
              height: 50,
            ),
            Consumer<BooksProvider>(
              builder: (context, value, child) => IconButton(
                onPressed: () {},
                icon: Icon(Icons.abc),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
