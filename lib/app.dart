import 'package:eriell_test_case/router/app_routes.dart';
import 'package:eriell_test_case/router/name_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'core/app_bloc/app_bloc.dart';
import 'core/theme/theme_data.dart';


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (_, state) {
        return KeyboardDismissOnTap(
          child: MaterialApp(
            navigatorKey: rootNavigatorKey,
            initialRoute: Routes.initial,
            onGenerateRoute: AppRoutes.onGenerateRoute,
            // title: context.localizations.appName,
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.light,
            theme: lightTheme,
            locale: state.appLocale == null
                ? null
                : Locale.fromSubtags(languageCode: state.appLocale!),
          ),
        );
      },
    );
  }
}
