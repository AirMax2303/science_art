import 'package:flutter/material.dart';
import 'package:science_art/pages/statute_page.dart';
import 'package:science_art/pages/form_page.dart';
import 'package:video_player/video_player.dart';
import 'app/theme/app_pallete.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    _controller = VideoPlayerController.asset('assets/space.mp4');

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
    const countingDown = TextStyle(fontSize: 70, color: AppPallete.blue);
    const timeTextStyle = TextStyle(fontSize: 35, color: AppPallete.black4);
    return Scaffold(
      body: LayoutBuilder(
          builder: (context, constraints) => Center(
                child: SingleChildScrollView(
                  child: Expanded(
                    child: Column(
                      children: [
                        //Container(height: 900,width: MediaQuery.of(context).size.width, child: VideoPlayer(_controller)),
                        Container(
                            height: constraints.maxHeight-200,
                            width: constraints.maxWidth,
                            child: VideoPlayer(_controller)),
                        //Expanded(
                        //  child: VideoPlayer(_controller),
                        //),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: constraints.maxWidth,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            //mainAxisAlignment: MainAxisAlignment.center,
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
                                        builder: (context) =>
                                            const StatutePage()),
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
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(80.0),
                          child: Text(
                            '||| МЕЖДУНАРОДНАЯ НАУЧНО-ИССЛЕДОВАТЕЛЬСКАЯ ВЫСТАВКА-КОНКУРС SCIENCE ART: SPACE',
                            style: TextStyle(
                                fontSize: 60, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                color: AppPallete.black10,
                                height: 6,
                                width: MediaQuery.of(context).size.width,
                              ),
                              const SizedBox(width: 30),
                              const Text(
                                'СИНТЕЗ НАУКИ И ИСКУССТВА',
                                style: headTextStyle,
                              ),
                              const SizedBox(width: 30),
                              Container(
                                color: AppPallete.black10,
                                height: 6,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        const Text(
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
                              children: const [
                                Text(
                                  '30 : ',
                                  style: countingDown,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'дней',
                                  style: timeTextStyle,
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '8 : ',
                                  style: countingDown,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'часов',
                                  style: timeTextStyle,
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '44 : ',
                                  style: countingDown,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'минут',
                                  style: timeTextStyle,
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '18',
                                  style: countingDown,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'секунд',
                                  style: timeTextStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        const Divider(
                          thickness: 6,
                          height: 6,
                          color: Colors.black87,
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FormPage()),
                            );
                          },
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
                              'Подать заявку',
                              style:
                                  TextStyle(fontSize: 35, color: Colors.white),
                            )),
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        //SvgPicture.asset('assets/image/22.png')
                        Image.asset('assets/img.png'),
                        Image(image: AssetImage('assets/img.png'))
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
