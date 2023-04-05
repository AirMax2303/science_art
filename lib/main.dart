import 'package:flutter/material.dart';
import 'package:science_art/pages/statute_page.dart';
import 'package:science_art/pages/form_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:video_player/video_player.dart';
import 'app/theme/app_pallete.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;
import 'package:flutter_svg/flutter_svg.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://gcddhgfkoeirakojcgkg.supabase.co',
    anonKey:
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjZGRoZ2Zrb2VpcmFrb2pjZ2tnIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODA1MzcwNjYsImV4cCI6MTk5NjExMzA2Nn0.eBu-XM3o7dh6GsqBC6aNwzhsyfemZ-2llVHOaxwI4-g',
  );

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
    final mediaQuery = MediaQuery.of(context);
    final headTextStyle = TextStyle(fontSize: mediaQuery.size.width / 40);
    final countingDown =
        TextStyle(fontSize: mediaQuery.size.width / 30, color: AppPallete.blue);
    const timeTextStyle = TextStyle(fontSize: 35, color: AppPallete.black4);

    if (kIsWeb || Platform.isMacOS || Platform.isLinux || Platform.isWindows) {
      return Scaffold(
        body: LayoutBuilder(
            builder: (context, constraints) => Center(
                  child: SingleChildScrollView(
                    child: Expanded(
                      child: Column(
                        children: [
                          //Container(height: 900,width: MediaQuery.of(context).size.width, child: VideoPlayer(_controller)),
                          SizedBox(
                              height: constraints.maxHeight - 200,
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
                                          builder: (context) =>
                                              const MyHomePage()),
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
                          const SizedBox(
                            height: 100,
                          ),
                          Padding(
                            padding: EdgeInsets.all(80.0),
                            child: Text(
                              '||| МЕЖДУНАРОДНАЯ НАУЧНО-ИССЛЕДОВАТЕЛЬСКАЯ ВЫСТАВКА-КОНКУРС SCIENCE ART: SPACE',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 30,
                                  fontWeight: FontWeight.w600),
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
                                Text(
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
                                    'часов',
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
                          const SizedBox(
                            height: 100,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AdminWidget()),
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
                                    'Admin',
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  )),
                            ),
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
                                style: TextStyle(
                                    fontSize: 35, color: Colors.white),
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
    return Text('Android');
  }
}

class AdminWidget extends StatefulWidget {
  const AdminWidget({Key? key}) : super(key: key);

  @override
  State<AdminWidget> createState() => _AdminWidgetState();
}

class _AdminWidgetState extends State<AdminWidget> {
  final _orders = Supabase.instance.client
      .from('orders')
      .select<List<Map<String, dynamic>>>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _orders,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
//          final menus = snapshot.data!;
          return _MenuItems(orders: snapshot.data!);
        },
      ),
    );
  }
}

class _MenuItems extends StatelessWidget {
  const _MenuItems({
    Key? key,
    required this.orders,
  }) : super(key: key);

  final List<Map<String, dynamic>> orders;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: ((context, index) {
        final order = orders[index];
        return ListTile(
          title: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                      order['name'],
                      maxLines: 2,
                    )),
              ],
            ),
          ),
          subtitle: Text(order['name']),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: const Icon(Icons.shopping_basket_outlined),
                onTap: () {},
              ),
              InkWell(
                child: const Icon(Icons.favorite_outline),
                onTap: () {},
              ),
            ],
          ),
        );
      }),
    );
  }
}

