import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mempool_app/blocs/block_list/block_list_bloc.dart';

import '../models/block.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget buildBlockTile(BuildContext context, Block block) {
    return ListTile(
      title: Text(block.height.toString()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BlockListBloc, BlockListState>(
        builder: (context, state) {
          if (state is BlockListUpdated && state.blocks.isNotEmpty) {
            final blocks = state.blocks;
            return ListView.builder(
                itemCount: blocks.length,
                itemBuilder: (context, index) {
                  final block = blocks[index];
                  return buildBlockTile(context, block);
                });
          } else {
            return Container(
              color: Colors.white,
              width: double.infinity,
              child: const Center(child: Text('No Blocks')),
            );
          }
        },
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     const Text(
        //       'Mempool App',
        //       style: TextStyle(color: Colors.white, fontSize: 42),
        //     ),
        //     const Text(
        //       'Block',
        //       style: TextStyle(color: Colors.white, fontSize: 24),
        //     ),
        //     const Divider(
        //       height: 80,
        //     ),
        //     TextButton(
        //       style: ButtonStyle(
        //         foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        //         backgroundColor:
        //             MaterialStateProperty.all<Color>(Colors.yellow),
        //       ),
        //       onPressed: () {
        //         //Navigator.pushNamed(context, '/');
        //       },
        //       child: Container(
        //         margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
        //         child: const Text('Status',
        //             style: TextStyle(color: Colors.black, fontSize: 24)),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
