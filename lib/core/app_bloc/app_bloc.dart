import 'package:equatable/equatable.dart';
import 'package:eriell_test_case/core/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_event.dart';

part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc()
      : super(AppState(lightTheme: lightTheme,),) {}
}
