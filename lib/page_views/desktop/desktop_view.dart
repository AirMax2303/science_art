import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../app/theme/app_pallete.dart';
import 'features/statute_page.dart';
import 'features/form_page.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
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
    final mediaQuery = MediaQuery.of(context);
    final headTextStyle = TextStyle(fontSize: mediaQuery.size.width / 40);
    final countingDown =
        TextStyle(fontSize: mediaQuery.size.width / 30, color: AppPallete.blue);
    final timeTextStyle = TextStyle(
        fontSize: mediaQuery.size.width / 50, color: AppPallete.black4);
    return Scaffold(
      body: LayoutBuilder(
          builder: (context, constraints) => Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //Container(height: 900,width: MediaQuery.of(context).size.width, child: VideoPlayer(_controller)),
                      SizedBox(
                          height: constraints.maxHeight - 200,
                          width: constraints.maxWidth,
                          child: VideoPlayer(_controller)),
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
                      ),
                      SizedBox(height: mediaQuery.size.width / 15),
                      Padding(
                        padding: EdgeInsets.all(80.0),
                        child: Text(
                          '||| МЕЖДУНАРОДНАЯ НАУЧНО-ИССЛЕДОВАТЕЛЬСКАЯ ВЫСТАВКА-КОНКУРС SCIENCE ART: SPACE',
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 30,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: mediaQuery.size.width / 15),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              color: AppPallete.black10,
                              height: MediaQuery.of(context).size.width / 300,
                              width: MediaQuery.of(context).size.width / 3.4,
                            ),
                            const SizedBox(width: 30),
                            Text(
                              'СИНТЕЗ НАУКИ И ИСКУССТВА',
                              style: headTextStyle,
                            ),
                            const SizedBox(width: 30),
                            Container(
                              color: AppPallete.black10,
                              height: MediaQuery.of(context).size.width / 300,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: mediaQuery.size.width / 15),
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
                            children: [
                              Text(
                                '8 : ',
                                style: countingDown,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'часов ',
                                style: timeTextStyle,
                              ),
                            ],
                          ),
                          Column(
                            children: [
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
                            children: [
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
                      SizedBox(height: mediaQuery.size.width / 15),
                      Divider(
                        thickness: MediaQuery.of(context).size.width / 300,
                        height: MediaQuery.of(context).size.width / 300,
                        color: Colors.black87,
                      ),
                      SizedBox(height: mediaQuery.size.width / 15),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FormPage()),
                          );
                        },
                        child: Container(
                          height: mediaQuery.size.width / 10,
                          width: mediaQuery.size.width / 3,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40)),
                            color: AppPallete.blue,
                          ),
                          child: Center(
                              child: Text(
                            'Подать заявку',
                            style: TextStyle(
                                fontSize: mediaQuery.size.width / 40,
                                color: Colors.white),
                          )),
                        ),
                      ),
                      SizedBox(height: mediaQuery.size.width / 15),
                      //SvgPicture.asset('assets/image/22.png')
                      Image.asset('assets/img.png'),

//                      Image(image: AssetImage('assets/img.png'));
                      Image.asset('assets/experts/belpay.jpg'),
//                      Image.asset('assets/experts/Белпая.jpg'),
                    ],
                  ),
                ),
              )),
    );
  }
}