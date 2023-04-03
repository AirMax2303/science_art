import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'app/theme/app_pallete.dart';

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
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video/space.mp4');

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const headTextStyle = TextStyle(fontSize: 35);
    const counting_down =
        TextStyle(fontSize: 70, color: AppPallete.labelViolet);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Container(height: 100,width: 100, child: VideoPlayer(_controller)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'КОНКУРС',
                    style: headTextStyle,
                  ),
                  SizedBox(width: 10),
                  Text(
                    '/',
                    style: headTextStyle,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'ПОЛОЖЕНИЕ',
                    style: headTextStyle,
                  ),
                  SizedBox(width: 10),
                  Text(
                    '/',
                    style: headTextStyle,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'СЕКЦИИ',
                    style: headTextStyle,
                  ),
                  SizedBox(width: 10),
                  Text(
                    '/',
                    style: headTextStyle,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'ОРГАНИЗАТОРЫ',
                    style: headTextStyle,
                  ),
                  SizedBox(width: 10),
                  Text(
                    '/',
                    style: headTextStyle,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'ЭКСПЕРТЫ',
                    style: headTextStyle,
                  ),
                  SizedBox(width: 10),
                  Text(
                    '/',
                    style: headTextStyle,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'ПАРТНЁРЫ',
                    style: headTextStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const Padding(
                padding: EdgeInsets.all(80.0),
                child: Text(
                  '||| МЕЖДУНАРОДНАЯ НАУЧНО-ИССЛЕДОВАТЕЛЬСКАЯ ВЫСТАВКА-КОНКУРС SCIENCE ART: SPACE',
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: AppPallete.black10,
                    height: 6,
                    width: 300,
                  ),
                  const SizedBox(width: 30),
                  Text(
                    'СИНТЕЗ НАУКИ И ИСКУССТВА',
                    style: headTextStyle,
                  ),
                  const SizedBox(width: 30),
                  Container(
                    color: AppPallete.black10,
                    height: 6,
                    width: 300,
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Text(
                'До окончания регистрации:',
                style: headTextStyle,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '30',
                        style: counting_down,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'дней',
                        style: headTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
