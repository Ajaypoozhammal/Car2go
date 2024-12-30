part of 'rent_all_bloc.dart';

@immutable
sealed class RentAllState {}

final class RentAllInitial extends RentAllState {}
class  RentAllLoading extends  RentAllState {}
class  RentAllLoaded extends  RentAllState {}
class  RentAllError extends  RentAllState {}