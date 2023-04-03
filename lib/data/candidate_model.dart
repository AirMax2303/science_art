class Candidate {
  Candidate({
    required this.id,
    required this.name, // Имя
    required this.surname, // Фамилия
    required this.patronymic, // Отчество
    required this.age_category, // Возрастная категория
    required this.job, // Место работы (только для профессиональных авторов)
    required this.email, // Почта
    required this.section, // Секция конкурса
    required this.phone_number, // Номер телефона
    required this.leadership, // Руководитель (только для младших участников)
  });

  final int id;
  final String name;
  final String surname;
  final String patronymic;
  final String age_category;
  final String job;
  final String email;
  final String section;
  final String phone_number;
  final String leadership;
}
