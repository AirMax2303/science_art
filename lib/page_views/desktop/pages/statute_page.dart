import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../app/theme/app_pallete.dart';
import '../widgets/header_widget.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
import 'package:flutter/services.dart' show rootBundle;

class StatutePage extends StatefulWidget {
  const StatutePage({Key? key}) : super(key: key);

  @override
  State<StatutePage> createState() => _StatutePageState();
}

class _StatutePageState extends State<StatutePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final simpleText = TextStyle(fontSize: mediaQuery.size.width / 60);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: HeaderWidget()),
            SizedBox(height: mediaQuery.size.width / 15),
            Text(
              'ПОЛОЖЕНИЕ III МЕЖДУНАРОДНОЙ НАУЧНО-ИССЛЕДОВАТЕЛЬСКОЙ ВЫСТАВКИ-КОНКУРСА SCIENCE ART: SPACE',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 40,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: mediaQuery.size.width / 15),
            //RichText(
            //  text: TextSpan(
            //    //text: 'Hello ',
            //    style: TextStyle(fontSize: MediaQuery.of(context).size.width / 60),
            //    children: const <TextSpan>[
            //      TextSpan(text: 'Организаторы', style: TextStyle(fontWeight: FontWeight.bold)),
            //      TextSpan(text: ' ФГБОУ  ВО «Кубанский государственный университет»:'),
            //      TextSpan(text: ' Кафедра ДПИ и дизайна художественно-графического факультета;'),
            //    ],
            //  ),
            //),

            Padding(
              padding: EdgeInsets.only(
                left: mediaQuery.size.width / 80,
                right: mediaQuery.size.width / 80,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Организаторы',
                        style: simpleText.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'ФГБОУ  ВО «Кубанский государственный университет»:',
                        style: simpleText,
                      ),
                    ],
                  ),
                  Text(
                    'Кафедра ДПИ и дизайна художественно-графического факультета;',
                    style: simpleText,
                  ),
                  Text(
                    'Кафедра анализа данных и искусственного интеллекта факультета компьютерных технологий и прикладной математики;',
                    style: simpleText,
                  ),
                  Text(
                    'Кафедра истории и правового регулирования массовых коммуникаций факультета журналистики;',
                    style: simpleText,
                  ),
                  Text(
                    'МУ ДО «Детская художественная школа» им.В.А.Филиппова муниципального образования город Краснодар',
                    style: simpleText,
                  ),
                  SizedBox(height: mediaQuery.size.width / 25),
                  Wrap(
                    children: [
                      Text(
                        'Партнёры: ',
                        style: simpleText.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'ООО Экстраверт, ',
                        style: simpleText,
                      ),
                      Text(
                        'Краснодарское региональное отделение общественной организации «Союз дизайнеров ',
                        style: simpleText,
                      ),
                      Text(
                        'России», ',
                        style: simpleText,
                      ),
                      Text(
                        'Технопарк КубГУ, ',
                        style: simpleText,
                      ),
                      Text(
                        'Точка кипения  КубГУ, ',
                        style: simpleText,
                      ),
                      Text(
                        'ООО «Рекламный дом Кубани», ',
                        style: simpleText,
                      ),
                      Text(
                        'информационный портал cityposter.ru, ',
                        style: simpleText,
                      ),
                      Text(
                        'газета “Кубанские новости», ',
                        style: simpleText,
                      ),
                      Text(
                        'телеграмм-канал «Наука и точка»',
                        style: simpleText,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
