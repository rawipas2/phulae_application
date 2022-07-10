
import 'package:flutter/material.dart';
import 'package:phulae_t6/src/pages/home/home_page.dart';

class AppRoute {
  static const home = 'home';

  final _route = <String, WidgetBuilder>{
    home: (context) => const MyHomePage(title: "Flutter Demo Home Page")
  };

  get getAll => _route;
}
