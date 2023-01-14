import 'package:hive/hive.dart';

import '../../constants/constants.dart';

class LocalSource {
  final Box<dynamic> box;

  LocalSource(this.box);

  Future<void> clear() async {
    await box.clear();
  }

  void setLocale(String locale) {
    box.put(AppKeys.LOCALE, locale);
  }

  String? getLocale() {
    return box.get(AppKeys.LOCALE);
  }

  Future<void> setAccessToken(String accessToken) async {
    await box.put(AppKeys.ACCESSTOKEN, accessToken);
  }

  String getAccessToken() {
    return box.get(AppKeys.ACCESSTOKEN, defaultValue: "");
  }

  bool showBoarding() {
    return box.get(AppKeys.showBoarding, defaultValue: true);
  }

  void setFirstName(String firstName) {
    box.put(AppKeys.FIRSTNAME, firstName);
  }

  String? getFirstName() {
    return box.get(AppKeys.FIRSTNAME);
  }

  void setLastName(String lastName) {
    box.put(AppKeys.LASTNAME, lastName);
  }

  String? getLastName() {
    return box.get(AppKeys.LASTNAME);
  }

  void setEmail(String email) {
    box.put(AppKeys.EMAIL, email);
  }

  String? getEmail() {
    return box.get(AppKeys.EMAIL);
  }

  void setPassword(String password) {
    box.put(AppKeys.PASSWORD, password);
  }

  String? getPassword() {
    return box.get(AppKeys.PASSWORD);
  }

  Future<void> setShowBoarding(bool value) async {
    await box.put(AppKeys.showBoarding, value);
  }

  Future<void> setHasProfile(bool value) async {
    await box.put(AppKeys.hasProfile, value);
  }

  String getKey(String key) {
    return box.get(key, defaultValue: "");
  }

  bool get hasProfile => box.get(AppKeys.hasProfile, defaultValue: false);
}
