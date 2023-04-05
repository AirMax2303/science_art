import 'package:flutter/material.dart';

import '../../../app/theme/app_pallete.dart';
import '../../../data/candidate_model.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final headTextStyle = TextStyle(fontSize: mediaQuery.size.width / 40);
    final countingDown =
        TextStyle(fontSize: mediaQuery.size.width / 30, color: AppPallete.blue);
    final timeTextStyle = TextStyle(
        fontSize: mediaQuery.size.width / 50, color: AppPallete.black4);
    List<Candidate> cadidates = [];
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Center(
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(cadidates.length, (index){
                return Text('');
              }),
            ),
          ),
        ),
      ),
    );
  }
}
