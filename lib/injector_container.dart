import 'dart:io';

import 'package:eriell_test_case/features/auth/presentation/bloc/login_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'core/app_bloc/app_bloc.dart';
import 'core/local_source/local_source.dart';

final sl = GetIt.instance;
late Box<dynamic> _box;

Future<void> init() async {
  await initHive();
  sl.registerSingleton<LocalSource>(LocalSource(_box));
  sl.registerSingleton<AppBloc>(AppBloc());
  authFeature();
}

Future<void> initHive() async {
  const boxName = 'eriell_test_case';
  Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  _box = await Hive.openBox<dynamic>(boxName);
}
void authFeature(){
  sl.registerFactory(() => LoginBloc());
}
