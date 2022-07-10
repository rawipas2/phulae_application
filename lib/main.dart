import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phulae_t6/src/bloc/app_observer.dart';
import 'package:phulae_t6/src/router/app_route.dart';
import 'src/pages/home/home_page.dart';

void main() {
  // runApp(const MyApp());
  BlocOverrides.runZoned(() {
    runApp(const MyApp());
  }, blocObserver: AppBlocObserver());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: AppRoute().getAll,
      home: const MyHomePage(title: 'title'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
