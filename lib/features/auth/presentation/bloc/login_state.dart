part of "login_bloc.dart";

abstract class LoginState extends Equatable {
  const LoginState();
}

class InitialState extends LoginState {
  const InitialState();

  @override
  List<Object?> get props => [];
}

class LoadingState extends LoginState {
  const LoadingState();

  @override
  List<Object?> get props => [];
}

class SuccessState extends LoginState {
  const SuccessState();

  @override
  List<Object?> get props => [];
}
class ButtonEnableState extends LoginState {
  const ButtonEnableState();

  @override
  List<Object?> get props => [];
}

class ErrorState extends LoginState {
  const ErrorState();

  @override
  List<Object?> get props => [];
}
