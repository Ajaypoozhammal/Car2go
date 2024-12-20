part of 'add_bloc.dart';

@immutable
sealed class AddState {}

final class AddInitial extends AddState {}
class  AddBlocLoading extends  AddState {}
class  AddsBlocLoaded extends  AddState {}
class  AddBlocError extends  AddState {}