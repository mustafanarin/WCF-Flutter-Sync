import 'package:flutter/material.dart';
import 'package:wcf_flutter_sync/views/home_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, title: 'Flutter WCF Manager', home: PersonListPage());
  }
}
