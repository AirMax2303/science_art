import 'package:flutter/material.dart';

void main() {
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
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('КОНКУРС', style: TextStyle(fontSize: 20, ),),
                const SizedBox(width: 10),
                Text('/'),
                const SizedBox(width: 10),
                Text('ПОЛОЖЕНИЕ'),
                const SizedBox(width: 10),
                Text('/'),
                const SizedBox(width: 10),
                Text('СЕКЦИИ'),
                const SizedBox(width: 10),
                Text('/'),
                const SizedBox(width: 10),
                Text('ОРГАНИЗАТОРЫ'),
                const SizedBox(width: 10),
                Text('/'),
                const SizedBox(width: 10),
                Text('ЭКСПЕРТЫ'),
                const SizedBox(width: 10),
                Text('/'),
                const SizedBox(width: 10),
                Text('ПАРТНЁРЫ'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
