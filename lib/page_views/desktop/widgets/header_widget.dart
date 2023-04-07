import 'package:flutter/material.dart';
import '../../../app/theme/app_pallete.dart';
import '../desktop_view.dart';
import '../pages/statute_page.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final headTextStyle = TextStyle(fontSize: mediaQuery.size.width / 40);
    final countingDown =
    TextStyle(fontSize: mediaQuery.size.width / 30, color: AppPallete.blue);
    final timeTextStyle = TextStyle(
        fontSize: mediaQuery.size.width / 50, color: AppPallete.black4);
    return Wrap(
      alignment: WrapAlignment.center,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const DesktopView()),
            );
          },
          child: Text(
            'КОНКУРС',
            style: headTextStyle,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          '/',
          style: headTextStyle,
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const StatutePage()),
            );
          },
          child: Text(
            'ПОЛОЖЕНИЕ',
            style: headTextStyle,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          '/',
          style: headTextStyle,
        ),
        const SizedBox(width: 10),
        Text(
          'СЕКЦИИ',
          style: headTextStyle,
        ),
        const SizedBox(width: 10),
        Text(
          '/',
          style: headTextStyle,
        ),
        const SizedBox(width: 10),
        Text(
          'ОРГАНИЗАТОРЫ',
          style: headTextStyle,
        ),
        const SizedBox(width: 10),
        Text(
          '/',
          style: headTextStyle,
        ),
        const SizedBox(width: 10),
        Text(
          'ЭКСПЕРТЫ',
          style: headTextStyle,
        ),
        const SizedBox(width: 10),
        Text(
          '/',
          style: headTextStyle,
        ),
        const SizedBox(width: 10),
        Text(
          'ПАРТНЁРЫ',
          style: headTextStyle,
        ),
      ],
    );
  }
}
