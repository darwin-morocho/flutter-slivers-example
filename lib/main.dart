import 'package:flutter/material.dart';
import 'package:slivers_demo/home_page.dart';
import 'package:slivers_demo/persistent_header_page.dart';
import 'package:slivers_demo/sliver_appbar_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PersistentHeaderPage(),
    );
  }
}
