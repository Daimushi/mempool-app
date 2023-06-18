part of 'block_list_bloc.dart';

@immutable
abstract class BlockListEvent {}

class AddBlock extends BlockListEvent {
  final Block block;

  AddBlock({required this.block});
}

class DeleteBlock extends BlockListEvent {
  final Block block;

  DeleteBlock({required this.block});
}

class UpdateBlock extends BlockListEvent {
  final Block block;

  UpdateBlock({required this.block});
}
