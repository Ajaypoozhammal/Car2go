part of 'rent_delete_bloc.dart';

@immutable
sealed class RentDeleteState {}

final class RentDeleteInitial extends RentDeleteState {}
class  RentDeleteLoading extends  RentDeleteState {}
class  RentDeleteLoaded extends  RentDeleteState {}
class  RentDeleteError extends  RentDeleteState {}