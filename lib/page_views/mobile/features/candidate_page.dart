import 'package:flutter/material.dart';

class CandidatePage extends StatefulWidget {
  const CandidatePage({super.key, required this.title});
  final String title;

  @override
  State<CandidatePage> createState() => _CandidatePageState();
}

class _CandidatePageState extends State<CandidatePage> {
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
