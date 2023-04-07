import 'package:flutter/material.dart';
import 'package:science_art/page_views/desktop/desktop_view.dart';
import 'package:science_art/page_views/mobile/mobile_view.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'consts.dart';
import 'data/candidate_model.dart';

//import 'package:science_art/page_views/desktop/features/statute_page.dart';
//import 'package:science_art/page_views/desktop/features/form_page.dart';
//import 'package:video_player/video_player.dart';
//import 'app/theme/app_pallete.dart';
//import 'package:flutter/foundation.dart' show kIsWeb;
//import 'dart:io' show Platform;
//import 'package:flutter_svg/flutter_svg.dart';

void main() async {
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Конкурс Science-Art Space',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.landscape) {
            /// landscape - горизонтальная
            return const DesktopView();
          } else {
            // Todo: MobileView
            return const MobileView(); //Text(MediaQuery.of(context).orientation.toString());
          }
        },
      ),
    );

    //if (kIsWeb || Platform.isMacOS || Platform.isLinux || Platform.isWindows) {
    //  return Text('Desktop');
    //}
    //return Text('Android');
  }
}

//class SqliteService {
//  Future<Database> initializeDB() async {
//    String path = await getDatabasesPath();
//
//    return openDatabase(
//      join(path, 'database.db'),
//      onCreate: (database, version) async {
//        await database.execute(
//          "CREATE TABLE Notes(id INTEGER PRIMARY KEY AUTOINCREMENT,description TEXT NOT NULL)",
//        );
//      },
//      version: 1,
//    );
//  }
//}
