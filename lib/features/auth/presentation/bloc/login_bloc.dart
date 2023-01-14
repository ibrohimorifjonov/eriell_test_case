import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants/constants.dart';

part "login_event.dart";

part "login_state.dart";
class LoginBloc extends Bloc<LoginEvent, LoginState>{
  LoginBloc() : super(const InitialState()) {
    on<OnTextChangedEvent>(_onTextChanged);
    on<OnButtonPressedEvent>(_onButtonPressed);
  }

  void _onTextChanged(OnTextChangedEvent event, Emitter<LoginState> emit) {
    if ((event.loginText?.trim().isNotEmpty ?? false) &&
        (event.passwordText?.trim().isNotEmpty ?? false)) {
      emit(const ButtonEnableState());
    } else {
      emit(const InitialState());
    }
  }

  void _onButtonPressed(OnButtonPressedEvent event, Emitter<LoginState> emit) {
    if ((event.loginText ==AppKeys.login)&&
        (event.passwordText==AppKeys.password)) {
      emit(const SuccessState());
    } else {
      emit(const ErrorState());
    }
  }
}