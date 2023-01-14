import 'package:eriell_test_case/core/local_source/local_source.dart';
import 'package:eriell_test_case/injector_container.dart';
import 'package:eriell_test_case/router/name_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import '../../../../core/theme/colors/theme_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late double top;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    top = MediaQuery.of(context).padding.top;
    Future.delayed(
      const Duration(milliseconds: 500),
      () {
        FlutterNativeSplash.remove();
      },
    );
    Future.delayed(
      const Duration(milliseconds: 1500),
      () {
        if (!mounted) return;
        if (sl<LocalSource>().hasProfile) {
          Navigator.pushReplacementNamed(context, Routes.main);
          return;
        } else {
          Navigator.pushReplacementNamed(context, Routes.auth);
          return;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.white,
      body: Stack(
        children: const [
          Positioned.fill(
            child: Center(
              child: Image(
                image: AssetImage("assets/png/logo.png"),
                height: 256,
                width: 256,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
