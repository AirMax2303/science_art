import 'package:flutter/material.dart';
import '../app/theme/app_pallete.dart';
import '../main.dart';

class StatutePage extends StatefulWidget {
  const StatutePage({Key? key}) : super(key: key);

  @override
  State<StatutePage> createState() => _StatutePageState();
}

class _StatutePageState extends State<StatutePage> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()),
                    );
                  },
                  child: const Text(
                    'КОНКУРС',
                    style: headTextStyle,
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
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
                  child: const Text(
                    'ПОЛОЖЕНИЕ',
                    style: headTextStyle,
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  '/',
                  style: headTextStyle,
                ),
                const SizedBox(width: 10),
                Text(
                  'СЕКЦИИ',
                  style: headTextStyle,
                ),
                const SizedBox(width: 10),
                const Text(
                  '/',
                  style: headTextStyle,
                ),
                const SizedBox(width: 10),
                Text(
                  'ОРГАНИЗАТОРЫ',
                  style: headTextStyle,
                ),
                const SizedBox(width: 10),
                const Text(
                  '/',
                  style: headTextStyle,
                ),
                const SizedBox(width: 10),
                Text(
                  'ЭКСПЕРТЫ',
                  style: headTextStyle,
                ),
                const SizedBox(width: 10),
                const Text(
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
            const SizedBox(height: 100),
            const Padding(
              padding: EdgeInsets.all(80.0),
              child: Text(
                '||| МЕЖДУНАРОДНАЯ НАУЧНО-ИССЛЕДОВАТЕЛЬСКАЯ ВЫСТАВКА-КОНКУРС SCIENCE ART: SPACE',
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
