import 'package:eriell_test_case/core/local_source/local_source.dart';
import 'package:eriell_test_case/core/widgets/error/error_page.dart';
import 'package:eriell_test_case/features/auth/presentation/bloc/login_bloc.dart';
import 'package:eriell_test_case/features/auth/presentation/pages/login_page.dart';
import 'package:eriell_test_case/features/splash/presentation/pages/splash_page.dart';
import 'package:eriell_test_case/injector_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../features/main/presentation/pages/main.dart';
import 'name_routes.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final localSource = sl<LocalSource>();


class AppRoutes {
  AppRoutes._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case Routes.main:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case Routes.auth:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<LoginBloc>(
            create: (_) => sl<LoginBloc>(),
            child: const LoginPage(),
          ),
        );

      default:
        return MaterialPageRoute(builder: (_) => const ErrorPage());
    }
  }
}
