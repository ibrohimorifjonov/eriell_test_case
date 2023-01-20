part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable{
  const RegisterEvent();
}
class OnTextChangedEvent extends RegisterEvent {
  final String? loginText;
  final String? passwordText;

  const OnTextChangedEvent({ this.loginText,  this.passwordText});

  @override
  List<Object?> get props => [loginText, passwordText];
}

class OnButtonPressedEvent extends RegisterEvent{
  final String loginText;
  final String passwordText;

  const OnButtonPressedEvent({required this.loginText,required this.passwordText});
  @override
  List<Object?> get props => [loginText,passwordText];

}