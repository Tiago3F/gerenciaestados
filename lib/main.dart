import 'package:flutter/material.dart';
import 'package:gerenciaestado/provider/controller/inc_controller.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ChangeNotifierProvider(
          create: (_) => IncController(), child: const HomePage()),
    );
  }
}
