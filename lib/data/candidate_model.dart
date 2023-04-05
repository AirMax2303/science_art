import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

@HiveType(typeId: 0)
class Candidate {
  Candidate({
//    required this.id,
    required this.name, // Имя
    required this.surname, // Фамилия
    required this.patronymic, // Отчество
    required this.age_category, // Возрастная категория
    required this.job, // Место работы (только для профессиональных авторов)
    required this.email, // Почта
    required this.section, // Секция конкурса
    required this.phone_number, // Номер телефона
    required this.leadership, // Руководитель (только для младших участников)
    required this.insert_date,
    required this.description,
    required this.update_date,
    required this.filename
  });

//  int id;
  @HiveField(0)
  String name = '';
  @HiveField(1)
  String surname = '';
  @HiveField(2)
  String patronymic = '';
  @HiveField(3)
  String age_category = '';
  @HiveField(4)
  String job = '';
  @HiveField(5)
  String email = '';
  @HiveField(6)
  String section = '';
  @HiveField(7)
  String phone_number = '';
  @HiveField(8)
  String leadership = '';
  @HiveField(9)
  String insert_date = '';
  @HiveField(10)
  String description = '';
  @HiveField(11)
  String update_date = '';
  @HiveField(12)
  String filename = '';
}
