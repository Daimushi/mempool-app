import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mempool_app/blocs/block_list/block_list_bloc.dart';
import 'package:mempool_app/config/routes.dart';
import 'package:mempool_app/screens/main_screen.dart';
import 'package:mempool_app/utils/colors.dart';

void main() {
  runApp(const MempoolApp());
}

class MempoolApp extends StatelessWidget {
  const MempoolApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => BlockListBloc())],
      child: MaterialApp(
        title: 'Mempool',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          scaffoldBackgroundColor: backgroundColor,
        ),
        home: const MainScreen(),
        //initialRoute: '/',
        routes: appRoutes,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
