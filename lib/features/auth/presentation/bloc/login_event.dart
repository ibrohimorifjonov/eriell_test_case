part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class OnTextChangedEvent extends LoginEvent {
  final String? loginText;
  final String? passwordText;

  const OnTextChangedEvent({ this.loginText,  this.passwordText});

  @override
  List<Object?> get props => [loginText, passwordText];
}

class OnButtonPressedEvent extends LoginEvent{
  final String loginText;
  final String passwordText;

  const OnButtonPressedEvent({required this.loginText,required this.passwordText});
  @override
  List<Object?> get props => [loginText,passwordText];

}
