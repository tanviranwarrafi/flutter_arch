import 'package:flutter_arch/constants/storage_keys.dart';
import 'package:flutter_arch/di.dart';
import 'package:flutter_arch/libraries/loacl_storage.dart';
import 'package:flutter_arch/models/dummy/language.dart';

class StorageService {
  var storage = sl<LocalStorage>();

  Future<void> removeData({required String key}) => storage.removeData(key: key);

  Language get getLanguage => storage.readData(key: LANGUAGE) ?? allLanguages.first;
  void setLanguage(Language language) => storage.storeData(key: LANGUAGE, value: language);

  String get getLanguageCode => storage.readData(key: LANGUAGE_CODE) ?? 'en';
  void setLanguageCode(String code) => storage.storeData(key: LANGUAGE_CODE, value: code);

  // bool get onboardStatus => storage.readData(key: ON_BOARD) ?? false;
  // void setOnboardStatus(bool status) => storage.storeData(key: ON_BOARD, value: status);

  bool get rememberMe => storage.readData(key: REMEMBER) ?? false;
  void setRememberStatus(bool status) => storage.storeData(key: REMEMBER, value: status);

  String get username => storage.readData(key: USERNAME) ?? '';
  void setUsername(String email) => storage.storeData(key: USERNAME, value: email);

  String get password => storage.readData(key: PASSWORD) ?? '';
  void setPassword(String passcode) => storage.storeData(key: PASSWORD, value: passcode);

  bool get authStatus => storage.readData(key: AUTH_STATUS) ?? false;
  void setAuthStatus(bool status) => storage.storeData(key: AUTH_STATUS, value: status);

  int get userId => storage.readData(key: USER_ID) ?? 0000;
  void setUserId(int id) => storage.storeData(key: USER_ID, value: id);

  String get bearerToken => storage.readData(key: BEARER_TOKEN) ?? '';
  void setBearerToken(String token) => storage.storeData(key: BEARER_TOKEN, value: token);

  /*Profile? get profile => !storage.hasLocalData(key: PROFILE) ? null : Profile.fromJson(json.decode(storage.readData(key: PROFILE)));
  void setProfile(Profile? data) => data == null ? null : storage.storeData(key: PROFILE, value: json.encode(data));

  UserDeviceInfo? get userDeviceInfo =>
      !storage.hasLocalData(key: USER_PREF) ? null : UserDeviceInfo.fromJson(json.decode(storage.readData(key: USER_PREF)));
  void setUserPref(UserDeviceInfo? data) => data == null ? null : storage.storeData(key: USER_PREF, value: json.encode(data));*/
}
