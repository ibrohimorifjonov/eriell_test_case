part of "register_bloc.dart";

abstract class RegisterState extends Equatable {
  const RegisterState();
}

class InitialState extends RegisterState {
  const InitialState();

  @override
  List<Object?> get props => [];
}
class SuccessState extends RegisterState {
  const SuccessState();

  @override
  List<Object?> get props => [];
}
class ButtonEnableState extends RegisterState {
  const ButtonEnableState();

  @override
  List<Object?> get props => [];
}

class ErrorState extends RegisterState {
  const ErrorState();

  @override
  List<Object?> get props => [];
}
