import 'package:eriell_test_case/core/theme/colors/theme_colors.dart';
import 'package:eriell_test_case/features/auth/presentation/bloc/register/register_bloc.dart';
import 'package:eriell_test_case/features/auth/presentation/pages/mixins/register_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_utils.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with RegisterMixin {
  @override
  void initState() {
    initControllers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
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
                    context.read<RegisterBloc>().add(
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
                    context.read<RegisterBloc>().add(OnTextChangedEvent(
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
        );
      },
    );
  }

  @override
  void dispose() {
    dispose();
    super.dispose();
  }
}
