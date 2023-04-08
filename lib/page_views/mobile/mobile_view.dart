import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:science_art/page_views/mobile/features/candidate_page.dart';
import 'features/login_page.dart';
import 'features/registration_page.dart';
import 'features/users_page.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import '/consts.dart';

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  State<MobileView> createState() => _MobileViewState();
}

Future<String> loadAsset(String filename) async {
  return await rootBundle.loadString(filename);
}

class _MobileViewState extends State<MobileView> {
  String? html;

  @override
  void initState() {
//    loadAsset().then((value) {
//      html = value;
//    });
  html = '123';
  loadAsset('test01.php').then((value) => html = value);
    print('---------------------------------------------------------------');
    print(html);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegistrationPage(title: 'Регистрация',)),
                  );
                },
                child: const Text('Зарегистрироваться')),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage(title: 'Login',)),
                  );
                },
                child: const Text('Войти')),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UsersPage(title: 'Пользователи',)),
                  );
                },
                child: const Text('Пользователи')),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CandidatePage(title: 'Участники')),
                  );
                },
                child: const Text('Участники')),
//            Image.network('https://science-art.pro/experts/denisenko.jpg');
            HtmlWidget(html!),
          ],
        ),
      ),
    );
  }
}
