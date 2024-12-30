part of 'delete_sell_bloc.dart';

@immutable
sealed class DeleteSellState {}

final class DeleteSellInitial extends DeleteSellState {}
class  DeleteSellLoading extends  DeleteSellState {}
class  DeleteSellLoaded extends  DeleteSellState {}
class  DeleteSellError extends  DeleteSellState {}