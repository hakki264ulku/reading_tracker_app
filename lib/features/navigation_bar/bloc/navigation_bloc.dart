import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reading_tracker_app/features/navigation_bar/bloc/navigation_event.dart';
import 'package:reading_tracker_app/features/navigation_bar/bloc/navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc(NavigationState initialState) : super(initialState){
    on<NavigationInitialEvent>((event, emit) async {
      emit(HomeSelectedState());
    });
    on<NavigatedEvent>((event, emit){
      switch (event.selectedItem) {
        case NavigationItem.HOME:
          emit(HomeSelectedState());
          break;
        case NavigationItem.BOOKS:
          emit(BooksSelectedState());
          break;

        case NavigationItem.PROFILE:
          emit(ProfileSelectedState());
          break;

        case NavigationItem.SETTING:
          emit(SettingSelectedState());
          break;
      }
    });
  }
}