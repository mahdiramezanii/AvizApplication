
import 'package:aviz_application/Features/search/bloc/search_event.dart';
import 'package:aviz_application/Features/search/bloc/serch_state.dart';
import 'package:aviz_application/Features/search/data/repository/serach_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SerachBloc extends Bloc<SearchEvent,SerachState>{

    final ISerachRepository repository;

    SerachBloc({required this.repository}): super(InitialSerachState()){

      on<RequestToSerachEvent>((event, emit) async {

        emit(LoadingSerachState());

        var response=await repository.getResultSerach(event.query);

        emit(ResponseSerchState(promotioan_serch_result: response));

      });
    }

}