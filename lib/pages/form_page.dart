import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../app/theme/app_pallete.dart';
import '../features/input_about_form.dart';
import '../main.dart';

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
      body: SingleChildScrollView(
        child: Expanded(
            child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
              ),
              child: ReactiveFormBuilder(
                  form: () => aboutForm,
                  builder: (context, form, child) {
                    return Column(children: [
                      InputAboutForm(
                        controller: surname,
                        labelText: 'Фамилия',
                        hintText: 'Фамилия',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InputAboutForm(
                        controller: name,
                        labelText: 'Имя',
                        hintText: 'Имя',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InputAboutForm(
                        controller: patronymic,
                        labelText: 'Отчество',
                        hintText: 'Отчество',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InputAboutForm(
                        controller: age_category,
                        labelText: 'Возратсная категория',
                        hintText: 'Возратсная категория',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InputAboutForm(
                        controller: job,
                        labelText: 'Место работы',
                        hintText: 'Место работы',
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
                        hintText: 'Электронная почта',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InputAboutForm(
                        controller: section,
                        labelText: 'Секция',
                        hintText: 'Секция',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InputAboutForm(
                        controller: phone_number,
                        labelText: 'Телефон',
                        hintText: 'Телефон',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InputAboutForm(
                        controller: leadership,
                        labelText: 'Руководитель',
                        hintText: 'Руководитель',
                      ),
                    ]);
                  }),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 160,
                width: 500,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  color: AppPallete.blue,
                ),
                child: const Center(
                    child: Text(
                  'Отправить',
                  style: TextStyle(fontSize: 35, color: Colors.white),
                )),
              ),
            ),
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
