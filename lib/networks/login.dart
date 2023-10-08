import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ss_assignment/config/api_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ss_assignment/models/payments.dart';

class Networks {
  login(
    String username,
    String password,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final url = Uri.parse('${Base_Url}login');
    try {
      var res = await http.post(
        Uri.parse('${Base_Url}login'),
        body: json
            .encode({"username": username, "password": password, "session": 1}),
        headers: {
          'Auth-key': '$Auth_Key',
        },
      );
      if (res.statusCode == 200) {
        var payload = json.decode(res.body);
        var status = payload['status'];
        var login = payload['login'];

        if (status == 200) {
          var id_user = login['id_users'];
          var idBranch = login['idbranch'];
          var token = login['token'];

          prefs.setString('id_user', id_user);
          prefs.setString('idbranch', idBranch);
          prefs.setString('token', token);

          return status;
        } else {
          print(status);
          return status;
        }
      }
    } catch (e) {
      throw e;
    }
  }


}
