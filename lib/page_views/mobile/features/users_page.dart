import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key, required this.title});
  final String title;

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {Navigator.pop(context);},
        ),
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(widget.title)
      ),
    );
  }
}
