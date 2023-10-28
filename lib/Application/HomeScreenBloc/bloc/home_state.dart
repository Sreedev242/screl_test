part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({required bool isLoading,
    required List resultList}) = _Initial;
    factory HomeState.inital()=>HomeState(isLoading: false, resultList: []);
}
