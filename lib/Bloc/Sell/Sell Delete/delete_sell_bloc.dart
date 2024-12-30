import 'package:bloc/bloc.dart';
import 'package:drive_to_go/Repository/Api/api.dart';
import 'package:drive_to_go/Repository/ModelClass/DeleteSellModel.dart';
import 'package:meta/meta.dart';

part 'delete_sell_event.dart';
part 'delete_sell_state.dart';

class DeleteSellBloc extends Bloc<DeleteSellEvent, DeleteSellState> {
  late  DeleteSellModel deleteSellModel;
  GetallbyApi getallbyApi=GetallbyApi();
  DeleteSellBloc() : super(DeleteSellInitial()) {
    on<FetchDeleteSell>((event, emit)async{
      emit(DeleteSellLoading());
      try{
        deleteSellModel= await getallbyApi.getDeletesell(event.id);
        emit(DeleteSellLoaded());
      }
      catch(e){
        emit(DeleteSellError());
      }
    });
  }
}
