part of 'block_list_bloc.dart';

abstract class BlockListState {
  List<Block> blocks;
  BlockListState({required this.blocks});
}

class BlockListInitial extends BlockListState {
  BlockListInitial({required List<Block> blocks}) : super(blocks: blocks);
}

class BlockListUpdated extends BlockListState {
  BlockListUpdated({required List<Block> blocks}) : super(blocks: blocks);
}
