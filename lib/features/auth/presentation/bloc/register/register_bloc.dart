import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "register_event.dart";
part "register_state.dart";

class RegisterBloc extends Bloc<RegisterEvent,RegisterState>{
  RegisterBloc():super (const InitialState()){
    on<OnTextChangedEvent>(_onTextChanged);
    on<OnButtonPressedEvent>(_onButtonPressed);
  }
  void _onTextChanged(OnTextChangedEvent event, Emitter<RegisterState> emit) {
    if ((event.loginText?.trim().isNotEmpty ?? false) &&
        (event.passwordText?.trim().isNotEmpty ?? false)) {
      emit(const ButtonEnableState());
    } else {
      emit(const InitialState());
    }
  }

  void _onButtonPressed(OnButtonPressedEvent event, Emitter<RegisterState> emit) {

  }
}