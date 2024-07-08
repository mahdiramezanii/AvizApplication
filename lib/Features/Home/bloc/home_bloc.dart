import 'package:aviz_application/Features/Home/bloc/home_event.dart';
import 'package:aviz_application/Features/Home/bloc/home_state.dart';
import 'package:aviz_application/Features/Home/data/repository/home_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepository repository;

  HomeBloc({required this.repository}) : super(initialHomeState()) {

    on<getHotestPromotaionsEvent>((event, emit) async {

      

      emit(LoadingHomeSatet());
      var response = await repository.getHotestPromotaionList();
      emit(ResponseHomeState(promotopanList: response));
      
    });
  }
}
