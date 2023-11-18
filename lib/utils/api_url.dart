class ApiUrl {
  // static String server = 'https://api.myhealthlog.in/api/v1';
  static String server = 'http://68.183.204.97/api/v1';

  // Auth
  String signUp = '$server/user/signup';
  String login = '$server/user/login';
  String twoFactorVerification = '$server/user/match/two-factor';

}
