import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_udid/flutter_udid.dart';

class DeviceInformation {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  Future<String?> deviceId() => FlutterUdid.consistentUdid;

  Future<IosDeviceInfo> getIOSInfo() => deviceInfo.iosInfo;

  Future<AndroidDeviceInfo> getAndroidInfo() => deviceInfo.androidInfo;

  Future<MacOsDeviceInfo> getMacOsInfo() => deviceInfo.macOsInfo;

  Future<WindowsDeviceInfo> getWindowsInfo() => deviceInfo.windowsInfo;

  Future<LinuxDeviceInfo> getLinuxInfo() => deviceInfo.linuxInfo;

  Future<WebBrowserInfo> getWebBrowserInfo() => deviceInfo.webBrowserInfo;
}
