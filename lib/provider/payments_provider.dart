

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import '../config/api_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../models/payments.dart';

class DrrProvider with ChangeNotifier {
  List<Drr> _items = [];

  List<Drr> get item {
    return [..._items];
  }
  dynamic payments() async {
    final prefs = await SharedPreferences.getInstance();

    var idbranch = prefs.getString('idbranch');
    var idUser = prefs.getString('id_user');
    var token = prefs.getString('token');

    final url = Uri.parse('${Base_Url}get_promoter_payment_summary');

    var res = await http.post(
      url,
      body: json
          .encode({"idbranch": '48', "iduser": "3384", "date": '2023-10-01'}),
      headers: {
        'Auth-key': Auth_Key,
        'User-ID': '3384',
        'Authorization-Token': '33.kIn\/zM38Kg'
      },
    );
    print(res.statusCode);
    if (res.statusCode == 200) {
      // print(json.decode(res.body));
      var payload = json.decode(res.body);
      var status = payload['status'];
      if (status == 200) {
        var data = payload['data'];
        var drr = data['drr'];
        print('thiss');
    List<Drr> payments=  Drr.fromJson(drr) as List<Drr>;

    _items=payments;

        print(payments);
      } else {
        print('failed');
      }
    }
  }

}