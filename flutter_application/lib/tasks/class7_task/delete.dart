import 'package:flutter/material.dart';

class DeleteItem extends StatefulWidget {
  const DeleteItem({super.key});

  @override
  State<DeleteItem> createState() => _DeleteItemState();
}

class _DeleteItemState extends State<DeleteItem> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        title: Text('Delete'),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Container(
        child: Form(child: ListView()),
      ),
    );
  }
}
