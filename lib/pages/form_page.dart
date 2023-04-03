import 'package:flutter/material.dart';
import '../app/theme/app_pallete.dart';
import '../main.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    const headTextStyle = TextStyle(fontSize: 35);
    const countingDown = TextStyle(fontSize: 70, color: AppPallete.blue);
    const timeTextStyle = TextStyle(fontSize: 35, color: AppPallete.black4);
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
            child: Column(
          children: [
            const SizedBox(height: 10),

          ],
        )),
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
 */