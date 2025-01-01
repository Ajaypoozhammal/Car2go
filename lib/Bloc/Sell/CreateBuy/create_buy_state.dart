part of 'create_buy_bloc.dart';

@immutable
sealed class CreateBuyState {}

final class CreateBuyInitial extends CreateBuyState {}
class CreateBuyBlocLoading extends CreateBuyState {}
class CreateBuyBlocLoaded extends CreateBuyState {}
class CreateBuyBlocError extends CreateBuyState {}