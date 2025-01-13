part of 'create_rent_bloc.dart';

@immutable
sealed class CreateRentState {}

final class CreateRentInitial extends CreateRentState {}
class CreateRentBlocLoading extends CreateRentState {}
class CreateRentBlocLoaded extends CreateRentState {}
class CreateRentBlocError extends CreateRentState {}