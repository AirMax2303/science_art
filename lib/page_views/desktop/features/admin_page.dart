import 'package:flutter/material.dart';

import '../../../app/theme/app_pallete.dart';
import '../../../data/candidate_model.dart';
import '../../../consts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';


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
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: Hive.box<Candidate>(candidateBoxName).listenable(),
          builder: (context, Box<Candidate> box, _) {
            if (box.values.isEmpty) {
              return const Center(
                child: Text("No orders"),
              );
            }
            return ListView.builder(
                itemCount: box.values.length,
                itemBuilder: (context, index) {
                  Candidate? candidate = box.getAt(index);
                  return Card(
                      child: Container(
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('${candidate?.name}'),
                                  const SizedBox(width: 5),
                                  Text('${candidate?.surname}'),
                                  const SizedBox(width: 5),
                                  Text('${candidate?.patronymic}'),
                                ],
                              ),
                              const SizedBox(width: 5),
                              Row(
                                children: [
                                  Text('${candidate?.phoneNumber}'),
                                  const SizedBox(width: 5),
                                  Text('${candidate?.ageCategory}'),
                                  const SizedBox(width: 5),
                                  Text('${candidate?.email}'),
                                ],
                              ),
                              const SizedBox(width: 5),
                              Row(
                                children: [
                                  Text('${candidate?.insertDate}'),
                                  const SizedBox(width: 5),
                                  Text('${candidate?.description}'),
                                  const SizedBox(width: 5),
                                  Text('${candidate?.updateDate}'),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    //Text('${candidate?.name}')
                  );
                }
            );
          }
      ),
    );
  }
}
