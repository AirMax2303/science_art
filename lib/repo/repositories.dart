import 'dart:convert';
import '/model/user_model.dart';
import 'package:http/http.dart';

class UserRepository {
  String userUrl = 'http://science-art.pro/test01.php';

  Future<List<User>> getUsers() async {
    Response response = await get(Uri.parse(userUrl));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => User.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
