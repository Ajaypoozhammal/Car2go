part of 'add_bloc.dart';

@immutable
sealed class AddEvent {}
class FetchAdd extends AddEvent {
  late final String name;
  FetchAdd({required this.name});
}