import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<AddItem>((event, emit) {
      state.list.add(event.keyy);
      emit(AppState(list: state.list));
      
    });
    on<RemoveItem>((event, emit) {
      print("heloos ${event.text}");
      final index1 = state.list.indexWhere((element) => element == event.text);
      state.list.removeAt(index1);
      
      emit(AppState(list: state.list));

    });
    on<RemoveIndex>((event, emit) {
      state.list.removeAt(event.indx);
      emit(AppState(list: state.list));
    });
  }
}