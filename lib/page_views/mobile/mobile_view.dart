import 'package:flutter/material.dart';
import 'package:science_art/page_views/mobile/features/candidate_page.dart';
import 'features/login_page.dart';
import 'features/registration_page.dart';
import 'features/users_page.dart';

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
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
          ],
        ),
      ),
    );
  }
}
