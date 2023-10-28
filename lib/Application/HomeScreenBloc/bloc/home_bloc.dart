import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.inital()) {
    on<HomeEvent>((event, emit)async {
      emit(HomeState(isLoading: true, resultList: []));
      Response response=await Dio(BaseOptions()).get('https://jsonplaceholder.typicode.com/users');
      List<Map<String,dynamic>> XlIST=List<Map<String,dynamic>> .from(response.data);
      print(XlIST.toString());
      emit(HomeState(isLoading: false, resultList: XlIST));
    });
  }
}
