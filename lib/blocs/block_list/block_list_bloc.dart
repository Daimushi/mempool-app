import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:mempool_app/models/block.dart';

part 'block_list_event.dart';
part 'block_list_state.dart';

class BlockListBloc extends Bloc<BlockListEvent, BlockListState> {
  BlockListBloc() : super(BlockListInitial(blocks: [])) {
    on<AddBlock>(_addBlocks);
    on<DeleteBlock>(_deleteBlocks);
    on<UpdateBlock>(_updateBlocks);
  }

  void _addBlocks(AddBlock event, Emitter<BlockListState> emit) {
    state.blocks.add(event.block);
    emit(BlockListUpdated(blocks: state.blocks));
  }

  void _deleteBlocks(DeleteBlock event, Emitter<BlockListState> emit) {
    state.blocks.remove(event.block);
    emit(BlockListUpdated(blocks: state.blocks));
  }

  void _updateBlocks(UpdateBlock event, Emitter<BlockListState> emit) {
    for (int i = 0; i < state.blocks.length; i++) {
      if (event.block.height == state.blocks[i].height) {
        state.blocks[i] = event.block;
      }
    }
    emit(BlockListUpdated(blocks: state.blocks));
  }
}
