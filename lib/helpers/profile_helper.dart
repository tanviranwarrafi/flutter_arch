class ProfileHelper {
  /*Profile get profile {
    var context = navigatorKey.currentState?.context;
    if (context == null) return Profile();
    var profileInfo = sl<StorageService>().profile;
    return profileInfo ?? Profile();
  }*/

  /*UserDeviceInfo get deviceInfo {
    var context = navigatorKey.currentState?.context;
    if (context == null) return UserDeviceInfo();
    var userPrefInfo = sl<StorageService>().userDeviceInfo;
    return userPrefInfo ?? UserDeviceInfo();
  }*/

  /*bool get isVerified {
    if (!sl<AuthService>().authStatus) return false;
    var verifiedAt = sl<StorageService>().profile?.emailVerifiedAt;
    return verifiedAt != null && verifiedAt == true;
  }*/

  /*String? get profileCountryCode {
    var countryCode = profile.phoneCode;
    if (countryCode == null) return null;
    var index = countries_data.indexWhere((item) => item.dialCode == countryCode);
    return index >= 0 ? countries_data[index].code.toLower : null;
  }*/

  /*String nameInitials(String? name) {
    if (name == null) return '';
    List<String> words = name.split(' ');
    for (int i = 0; i < words.length; i++) {
      if (words[i].isNotEmpty) words[i] = words[i][0].toUpper + words[i].substring(1).toLower;
    }
    var result = words.join(' ');
    var initials = result.replaceAll(RegExp('[^A-Z]'), '');
    return initials.length >= 2 ? initials.substring(0, 2).toUpper : '';
  }*/

  /*String formattedName(String name) {
    var lowercase = name.toLowerCase();
    List<String> nameParts = name.split(' ');
    if (lowercase.contains('dr')) {
      return nameParts.length >= 2 ? '${nameParts[0]} ${nameParts[1]}' : nameParts[0];
    } else {
      return nameParts[0];
    }
  }*/
}
