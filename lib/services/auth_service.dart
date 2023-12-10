import 'package:app/constants/storage_keys.dart';
import 'package:app/di.dart';
import 'package:app/implementations/http_module.dart';
import 'package:app/libraries/loacl_storage.dart';
import 'package:app/services/storage_service.dart';
import 'package:app/utils/keys.dart';

class AuthService {
  bool get authStatus => sl<StorageService>().authStatus;

  void clearMemory() => sl<LocalStorage>().removeAllData();

  void initStorageInLoginState() {
    var token = sl<StorageService>().bearerToken;
    HttpModule.setToken(token: token);
  }

  void storeCredentials(var rememberData) {
    sl<StorageService>().setUsername(rememberData['email']!);
    sl<StorageService>().setPassword(rememberData['password']!);
    sl<StorageService>().setRememberStatus(true);
  }

  /*void setProfileInfo(AuthApi authApi) {
    var context = navigatorKey.currentState?.context;
    if (context == null) return;
    HttpModule.setToken(token: authApi.token!);
    sl<StorageService>().setAuthStatus(true);
    sl<StorageService>().setUserId(authApi.profile!.id!);
    sl<StorageService>().setBearerToken(authApi.token!);
    sl<StorageService>().setProfile(authApi.profile);
    sl<StorageService>().setUserPref(authApi.deviceInfo);
  }*/

  void signOutUpdate() {
    var context = navigatorKey.currentState?.context;
    if (context == null) return;
    HttpModule.setToken(token: '');
    sl<StorageService>().removeData(key: USER_ID);
    sl<StorageService>().removeData(key: AUTH_STATUS);
    sl<StorageService>().removeData(key: BEARER_TOKEN);
    sl<StorageService>().removeData(key: PROFILE);
    sl<StorageService>().removeData(key: USER_PREF);
  }

  /*void _removeCredentialsUpdate() {
    sl<StorageService>().removeData(key: REMEMBER);
    sl<StorageService>().removeData(key: USERNAME);
    sl<StorageService>().removeData(key: PASSWORD);
  }*/
}
