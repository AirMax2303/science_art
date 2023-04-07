import 'package:science_art/app/theme/app_pallete.dart';
import '../../widgets/header_widget.dart';
import 'package:flutter/material.dart';

import 'data/organizers_model.dart';

class OrganizersPage extends StatefulWidget {
  const OrganizersPage({Key? key}) : super(key: key);

  @override
  State<OrganizersPage> createState() => _OrganizersPageState();
}

class _OrganizersPageState extends State<OrganizersPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final simpleText = TextStyle(fontSize: mediaQuery.size.width / 60);
    List<OrganizersModel> organizersList = [];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(child: HeaderWidget()),
            SizedBox(height: mediaQuery.size.width / 15),
            Align(
              alignment: Alignment.center,
              child: Text(
                'ОРГАНИЗАТОРЫ',
                style: TextStyle(
                    fontSize: mediaQuery.size.width / 40,
                    color: AppPallete.black6),
                //textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
