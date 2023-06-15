import 'package:flutter/material.dart';
import 'package:mempool_app/config/routes.dart';
import 'package:mempool_app/constants/colors.dart';

void main() {
  runApp(const MempoolApp());
}

class MempoolApp extends StatelessWidget {
  const MempoolApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mempool',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        scaffoldBackgroundColor: backgroundColor,
      ),
      initialRoute: '/',
      routes: appRoutes,
      debugShowCheckedModeBanner: false,
    );
  }
}
