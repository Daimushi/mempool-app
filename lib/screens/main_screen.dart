import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Mempool App',
            style: TextStyle(color: Colors.white, fontSize: 42),
          ),
          const Text(
            'Block',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const Divider(
            height: 80,
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
            ),
            onPressed: () {
              //Navigator.pushNamed(context, '/');
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
              child: const Text('Status',
                  style: TextStyle(color: Colors.black, fontSize: 24)),
            ),
          ),
        ],
      ),
    );
  }
}
