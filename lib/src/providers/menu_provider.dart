import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> options = [];
  _MenuProvider() {
    //loadData();
  }

  Future<List<dynamic>> loadData() async {
    final response = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(response);
    options = dataMap['routes'];

    return options;
  }
}

final menuProvider = new _MenuProvider();
