part of 'get_all_by_bloc.dart';

@immutable
sealed class GetAllByState {}

final class GetAllByInitial extends GetAllByState {}
class  GetAllByLoading extends  GetAllByState {}
class  GetAllByLoaded extends  GetAllByState {}
class  GetAllByError extends  GetAllByState {}