import 'package:eriell_test_case/core/theme/colors/theme_colors.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Error")),
      body: SizedBox(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                Icons.error,
                size: 80,
                color: ThemeColors.errorColor,
              ),
              Text(
                "Error in argument ! ! !",
                maxLines: 2,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: ThemeColors.errorColor,
                ),
              ),
            ]),
      ),
    );
  }
}
