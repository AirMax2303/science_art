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
  String name;
  String surname;
  String patronymic;
  String age_category;
  String job;
  String email;
  String section;
  String phone_number;
  String leadership;
  String insert_date;
  String description;
  String update_date;
  String filename;
}
