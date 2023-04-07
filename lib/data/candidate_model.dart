var age_categoryes = [
  'Детский тур (с 2011 г.р.)',
  'Студенческий тур (2000 - 2015 г.р.)',
  'Милениалы (1984 - 1999 г.р.)',
  'Профессиональный тур (до 1983 г.р.)'];

var age_category_indexes = [0, 1, 2, 3];

var sections = [
  ['Графика', 'Живопись', 'Арт-обьект', 'Фотография'],
  ['Холст', 'Видеодизайн и анимация', 'Рисование и VR'],
  ['фотографика', 'Иллюстрация', 'Арт-обьект', 'Панно', 'IT технологии в искустве', 'Арт-репортаж'],
  ['фотографика', 'Иллюстрация', 'Арт-обьект', 'Панно', 'IT технологии в искустве', 'Арт-репортаж']
];

class User {
  String? id;
  String? name;
  String? pass;

  User({this.id, this.name, this.pass});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    pass = json['pass'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['pass'] = pass;
    return data;
  }
}
class Candidate {
  String? id;
  String? name;
  String? surname;
  String? patronymic;
  String? ageCategory;
  String? job;
  String? email;
  String? section;
  String? phoneNumber;
  String? leadership;
  String? insertDate;
  String? description;
  String? updateDate;
  String? filename;

  Candidate(
      {this.id,
        this.name,
        this.surname,
        this.patronymic,
        this.ageCategory,
        this.job,
        this.email,
        this.section,
        this.phoneNumber,
        this.leadership,
        this.insertDate,
        this.description,
        this.updateDate,
        this.filename});

  Candidate.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    surname = json['surname'];
    patronymic = json['patronymic'];
    ageCategory = json['age_category'];
    job = json['job'];
    email = json['email'];
    section = json['section'];
    phoneNumber = json['phone_number'];
    leadership = json['leadership'];
    insertDate = json['insert_date'];
    description = json['description'];
    updateDate = json['update_date'];
    filename = json['filename'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['surname'] = surname;
    data['patronymic'] = patronymic;
    data['age_category'] = ageCategory;
    data['job'] = job;
    data['email'] = email;
    data['section'] = section;
    data['phone_number'] = phoneNumber;
    data['leadership'] = leadership;
    data['insert_date'] = insertDate;
    data['description'] = description;
    data['update_date'] = updateDate;
    data['filename'] = filename;
    return data;
  }
}

/*
CREATE TABLE candidate (
  id int NOT NULL AUTO_INCREMENT,
  name text,
  surname text,
  patronymic text,
  age_category text,
  job text,
  email text,
  section text,
  phone_number text,
  leadership text,
  insert_date text,
  description text,
  update_date text,
  filename text,
  PRIMARY KEY (id) );
*/