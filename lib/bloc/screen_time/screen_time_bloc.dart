import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'screen_time_event.dart';
part 'screen_time_state.dart';

class ScreenTimeBloc extends Bloc<ScreenTimeEvent, ScreenTimeState> {
  ScreenTimeBloc() : super(ScreenTimeInitial()) {
    on<ScreenTimeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
