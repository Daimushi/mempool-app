import 'package:flutter/material.dart';
import 'package:mempool_app/screens/main_screen.dart';

///File containing all the named routes of the app
final appRoutes = <String, WidgetBuilder>{
  '/': (context) => const MainScreen(),
};
