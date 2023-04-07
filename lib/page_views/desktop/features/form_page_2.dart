import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
            FormBuilderTextField(
              name: 'cs'
            )
            ],
          )
        )
      )
    );
  }
}