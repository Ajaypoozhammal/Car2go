part of 'rent_delete_bloc.dart';

@immutable
sealed class RentDeleteEvent {}
class FetchDeleteRent extends RentDeleteEvent {
  late final String id;
  FetchDeleteRent({required this.id});
}