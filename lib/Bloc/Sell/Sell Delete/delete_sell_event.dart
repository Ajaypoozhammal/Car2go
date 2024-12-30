part of 'delete_sell_bloc.dart';

@immutable
sealed class DeleteSellEvent {}
class FetchDeleteSell extends DeleteSellEvent {
  late final String id;
  FetchDeleteSell({required this.id});
}