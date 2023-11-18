class AuthRepository {
  Future<Map<String, dynamic>> signIn({required Map<String, dynamic> body}) async {
    await Future.delayed(const Duration(seconds: 1));
    return {'data': true};
    /* var endPoint = sl<ApiUrl>().login;
    var finalBody = await _authBody(body);
    var apiResponse = await sl<ApiInterceptor>().postRequest(endPoint: endPoint, body: finalBody, header: Header.http);
    if (apiResponse.status == 200) {
      var message = apiResponse.response['message'];
      var isVerification = message != null && message == 'Verification code send.';
      if (isVerification) return {'success': true, 'data': null};
      return {'success': true, 'data': AuthApi.fromJson(apiResponse.response['data'])};
    } else if (apiResponse.status == 300) {
      return _loginValidation(apiResponse, finalBody);
    } else {
      sl<FlashBars>().errorMessage(message: 'Unexpected server error. Please try again later.');
      return {'success': false, 'data': null};
    }*/
  }

  /*dynamic _loginValidation(ApiResponse apiResponse, var finalBody) {
    if (apiResponse.response['message'] == 'Invalid data!') {
      sl<FlashBars>().warningMessage(message: 'No user found! Please try again.');
      return {'success': false, 'data': null};
    } else if (apiResponse.response['message'] == 'Invalid password.') {
      sl<FlashBars>().warningMessage(message: 'Wrong credentials! Please try again.');
      return {'success': false, 'data': null};
    } else if (apiResponse.response['message'] == 'User not found.') {
      sl<FlashBars>().warningMessage(message: 'No user found! Please try again.');
      return {'success': false, 'data': null};
    } else {
      sl<FlashBars>().errorMessage(message: 'Unexpected server error. Please try again later.');
      return {'success': false, 'data': null};
    }
  }*/

  /*Future<AuthApi?> signUp({required Map<String, dynamic> body}) async {
    var endPoint = sl<ApiUrl>().signUp;
    var finalBody = await _authBody(body);
    var apiResponse = await sl<ApiInterceptor>().postRequest(endPoint: endPoint, body: finalBody, header: Header.http);
    if (apiResponse.status == 200) {
      return AuthApi.fromJson(apiResponse.response['data']);
    } else if (apiResponse.status == 300) {
      return _signupValidation(apiResponse, finalBody);
    } else {
      sl<FlashBars>().errorMessage(message: 'Unexpected server error. Please try again later.');
      return null;
    }
  }*/

  /*dynamic _signupValidation(ApiResponse apiResponse, var finalBody) {
    if (apiResponse.response['message'] == 'The email has already been taken.') {
      sl<FlashBars>().warningMessage(message: 'This user already exists! Please try with another email');
      return null;
    } else if (apiResponse.response['message'] == 'The phone has already been taken.') {
      sl<FlashBars>().warningMessage(message: 'This phone number already exists! Please try with another phone number');
      return null;
    } else if (apiResponse.response['message'] == 'Key is required.') {
      var message = finalBody['medium'] == GOOGLE_LOGIN ? 'Google authentication failed!' : 'Apple authentication failed!';
      sl<FlashBars>().warningMessage(message: message);
      return null;
    } else {
      return null;
    }
  }*/

  /*Future<dynamic> _authBody(var body) async {
    var deviceInfo = await sl<DeviceService>().deviceBasicInfo();
    body['os'] = Platform.isIOS ? APPLE : ANDROID;
    body['device_model'] = deviceInfo['device_model'];
    body['device_identity'] = await sl<DeviceService>().deviceId();
    body['device_key'] = await sl<NotificationService>().getFcmToken();
    return body;
  }*/

  /*Future<AuthApi?> twoFactorVerification(var body) async {
    var endPoint = sl<ApiUrl>().twoFactorVerification;
    var finalBody = await _authBody(body);
    var apiResponse = await sl<ApiInterceptor>().putRequest(endPoint: endPoint, body: finalBody, header: Header.http);
    if (apiResponse.status == 200) {
      return AuthApi.fromJson(apiResponse.response['data']);
    } else if (apiResponse.status == 300) {
      var isMatched = apiResponse.response['message'] != 'Verification code does not match.';
      if (!isMatched) sl<FlashBars>().warningMessage(message: 'The verification code entered does not match');
      return null;
    } else {
      return null;
    }
  }
*/
  /*Future<bool> forgotPassword({required var body}) async {
    var endPoint = sl<ApiUrl>().forgotPassword;
    var apiResponse = await sl<ApiInterceptor>().putRequest(endPoint: endPoint, body: body, header: Header.http);
    if (apiResponse.status == 200) {
      sl<FlashBars>().successMessage(message: 'Verification code sent to your email');
      return true;
    } else if (apiResponse.status == 300) {
      var noUserFound = apiResponse.response['message'] == 'User not found.';
      if (noUserFound) sl<FlashBars>().warningMessage(message: 'No user found! Please try again.');
      return false;
    } else {
      return false;
    }
  }*/

  /*Future<AuthApi?> emailVerification(var body) async {
    var endPoint = sl<ApiUrl>().emailVerification;
    var apiResponse = await sl<ApiInterceptor>().putRequest(endPoint: endPoint, body: body, header: Header.http);
    if (apiResponse.status == 200) {
      return AuthApi.fromJson(apiResponse.response['data']);
    } else if (apiResponse.status == 300) {
      var isMatched = apiResponse.response['message'] != 'Verification code does not match.';
      if (!isMatched) sl<FlashBars>().warningMessage(message: 'The verification code entered does not match');
      return null;
    } else {
      return null;
    }
  }*/

  /*Future<bool> forgotPasswordVerification(var body) async {
    var endPoint = sl<ApiUrl>().forgotPasswordVerification;
    var apiResponse = await sl<ApiInterceptor>().putRequest(endPoint: endPoint, body: body, header: Header.http);
    if (apiResponse.status == 200) {
      return true;
    } else if (apiResponse.status == 300) {
      var isMatched = apiResponse.response['message'] == 'Verification code does not match.';
      if (isMatched) sl<FlashBars>().warningMessage(message: 'The verification code entered does not match');
      return false;
    } else {
      return false;
    }
  }*/

  /*Future<bool> setPassword({required var body}) async {
    var endPoint = sl<ApiUrl>().setPassword;
    var apiResponse = await sl<ApiInterceptor>().putRequest(endPoint: endPoint, body: body, header: Header.http);
    return apiResponse.status == 200;
  }*/
}
