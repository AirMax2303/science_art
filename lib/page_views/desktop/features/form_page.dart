import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../../app/theme/app_pallete.dart';
import '../../../data/candidate_model.dart';
import '../../../features/input_about_form.dart';
import '../../../main.dart';
import '../../../consts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final name = TextEditingController();
  final surname = TextEditingController();
  final patronymic = TextEditingController();
  final age_category = TextEditingController();
  final job = TextEditingController();
  final email = TextEditingController();
  final section = TextEditingController();
  final phone_number = TextEditingController();
  final leadership = TextEditingController();

//  late Candidate candidate_data;

  @override
  Widget build(BuildContext context) {
    const headTextStyle = TextStyle(fontSize: 35);
    const countingDown = TextStyle(fontSize: 70, color: AppPallete.blue);
    const timeTextStyle = TextStyle(fontSize: 35, color: AppPallete.black4);
    FormGroup aboutForm = FormGroup({
      'name': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'gender': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'lastName': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'patronymic': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'email': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'phone': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'birthday': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
    });
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constaitns) => SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, bottom: 10.0, top: 5.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.arrow_back_ios,
                        color: AppPallete.blue,
                      ),
                      Text(
                        'На главную',
                        style: TextStyle(
                          color: AppPallete.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 6,
                  right: MediaQuery.of(context).size.width / 6,
                ),
                child: ReactiveFormBuilder(
                    form: () => aboutForm,
                    builder: (context, form, child) {
                      return Column(children: [
                        InputAboutForm(
                          controller: surname,
                          labelText: 'Фамилия',
                          hintText: '',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InputAboutForm(
                          controller: name,
                          labelText: 'Имя',
                          hintText: '',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InputAboutForm(
                          controller: patronymic,
                          labelText: 'Отчество',
                          hintText: '',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InputAboutForm(
                          controller: age_category,
                          labelText: 'Возратсная категория',
                          hintText: '',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InputAboutForm(
                          controller: job,
                          labelText: 'Место работы',
                          hintText: '',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        //GestureDetector(
                        //    onTap: () {
                        //      //AppTimePicker.showDatePickerApp(context);
                        //    },
                        //    child: const Text('Выбор даты рождения')),
                        InputAboutForm(
                          controller: email,
                          labelText: 'Электронная почта',
                          hintText: '',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InputAboutForm(
                          controller: section,
                          labelText: 'Секция',
                          hintText: '',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InputAboutForm(
                          controller: phone_number,
                          labelText: 'Телефон',
                          hintText: '',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InputAboutForm(
                          controller: leadership,
                          labelText: 'Руководитель',
                          hintText: '',
                        ),
                      ]);
                    }),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 80,
                  width: 300,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    color: AppPallete.blue,
                  ),
                  child: const Center(
                      child: Text(
                    'Отправить',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
* Имя
* Фамилия
* Отчество
* Возрастная категория
* Секция
* Email
* Телефон
* Руководитель
* Файл
* ---
* Для профессиональных авторов
* Имя
* Фамилия
* Отчество
* Возрастная категория
* Место работы
* Секция
* Email
* Телефон
* Файл
 */
