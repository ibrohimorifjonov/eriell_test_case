import 'package:eriell_test_case/core/theme/colors/theme_colors.dart';
import 'package:eriell_test_case/core/utils/app_utils.dart';
import 'package:eriell_test_case/features/auth/presentation/pages/mixins/auth_mixin.dart';
import 'package:eriell_test_case/router/name_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/local_source/local_source.dart';
import '../../../../injector_container.dart';
import '../bloc/login_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with LoginMixin {
  @override
  void initState() {
    initControllers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is SuccessState) {
          sl<LocalSource>().setHasProfile(true);
          Navigator.of(context).pushReplacementNamed(
            Routes.main,
          );
        }
      },
      builder: (context, state) {
        return BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: ThemeColors.white,
              body: Padding(
                padding: AppUtils.kPaddingHor16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextField(
                      controller: loginTextController,
                      onChanged: (login) {
                        context.read<LoginBloc>().add(
                              OnTextChangedEvent(
                                loginText: login,
                                passwordText: passwordTextController.text,
                              ),
                            );
                      },
                      decoration: InputDecoration(
                        hintText: "Login",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: (state is ErrorState)
                                  ? ThemeColors.errorColor
                                  : const Color.fromRGBO(110, 139, 183, 0.3),
                              width: 1),
                          borderRadius: AppUtils.kBorderRadius12,
                        ),
                      ),
                    ),
                    AppUtils.kBoxHeight16,
                    TextField(
                      controller: passwordTextController,
                      onChanged: (password) {
                        context.read<LoginBloc>().add(OnTextChangedEvent(
                            loginText: loginTextController.text,
                            passwordText: password));
                      },
                      decoration: InputDecoration(
                        hintText: 'Password',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: (state is ErrorState)
                                  ? ThemeColors.errorColor
                                  : const Color.fromRGBO(110, 139, 183, 0.3),
                              width: 1),
                          borderRadius: AppUtils.kBorderRadius12,
                        ),
                      ),
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: SafeArea(
                top: false,
                minimum: AppUtils.kPaddingAllT0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: state is ButtonEnableState
                          ? () {
                              context.read<LoginBloc>().add(
                                    OnButtonPressedEvent(
                                      loginText: loginTextController.text,
                                      passwordText: passwordTextController.text,
                                    ),
                                  );
                            }
                          : null,
                      child: const Text("Login"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Register"),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
