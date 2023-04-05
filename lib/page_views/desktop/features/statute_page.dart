import 'package:flutter/material.dart';
import '../../../app/theme/app_pallete.dart';
import '../desktop_view.dart';

class StatutePage extends StatefulWidget {
  const StatutePage({Key? key}) : super(key: key);

  @override
  State<StatutePage> createState() => _StatutePageState();
}

class _StatutePageState extends State<StatutePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final headTextStyle = TextStyle(fontSize: mediaQuery.size.width / 40);
    final countingDown =
    TextStyle(fontSize: mediaQuery.size.width / 30, color: AppPallete.blue);
    final timeTextStyle = TextStyle(
        fontSize: mediaQuery.size.width / 50, color: AppPallete.black4);
    return Scaffold(
      body: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Wrap(
                          alignment: WrapAlignment.center,
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DesktopView()),
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
                                      builder: (context) =>
                                          const StatutePage()),
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
                        ),

                      SizedBox(height: mediaQuery.size.width / 15),
                      Padding(
                        padding: const EdgeInsets.all(80.0),
                        child: Text(
                          'ПОЛОЖЕНИЕ III МЕЖДУНАРОДНОЙ НАУЧНО-ИССЛЕДОВАТЕЛЬСКОЙ ВЫСТАВКИ-КОНКУРСА SCIENCE ART: SPACE',
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 30,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: mediaQuery.size.width / 40),
                      Text(
                        'ПАРТНЁРЫ',
                        style: headTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
    );
  }
}
