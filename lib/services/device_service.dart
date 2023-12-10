import 'dart:io' as io;

import 'package:app/di.dart';
import 'package:app/libraries/device_info.dart';

class DeviceService {
  Future<String?> deviceId() => sl<DeviceInformation>().deviceId();

  String deviceOsVersion() => io.Platform.operatingSystemVersion;

  /*String deviceType() {
    String deviceType = 'Mobile';
    var data = MediaQueryData.fromView(WidgetsBinding.instance.window);
    deviceType = data.size.shortestSide < 550 ? 'Mobile' : 'Tab';
    return deviceType;
  }*/

  Future<String> deviceIpAddress() async {
    String ipAddress = '';
    for (var interface in await io.NetworkInterface.list()) {
      for (var address in interface.addresses) {
        ipAddress = address.address;
      }
    }
    return ipAddress;
  }

  String getOsType() {
    if (io.Platform.isIOS) {
      return 'ios';
    } else if (io.Platform.isAndroid) {
      return 'android';
    } else if (io.Platform.isMacOS) {
      return 'mac';
    } else if (io.Platform.isFuchsia) {
      return 'fuchsia';
    } else if (io.Platform.isLinux) {
      return 'linux';
    } else if (io.Platform.isWindows) {
      return 'windows';
    } else {
      return 'ios';
    }
  }

  Future<dynamic> deviceBasicInfo() async {
    if (io.Platform.isIOS) {
      var iosInfo = await sl<DeviceInformation>().getIOSInfo();
      return {'device_type': iosInfo.model, 'device_model': iosInfo.name};
    } else if (io.Platform.isAndroid) {
      var androidInfo = await sl<DeviceInformation>().getAndroidInfo();
      return {'device_type': androidInfo.model, 'device_model': androidInfo.type};
    } else if (io.Platform.isMacOS) {
      var macOsInfo = await sl<DeviceInformation>().getMacOsInfo();
      return {'device_type': macOsInfo.model, 'device_model': macOsInfo.computerName};
    } else if (io.Platform.isLinux) {
      var linuxInfo = await sl<DeviceInformation>().getLinuxInfo();
      return {'device_type': linuxInfo.name, 'device_model': linuxInfo.variant};
    } else if (io.Platform.isWindows) {
      var windowsInfo = await sl<DeviceInformation>().getWindowsInfo();
      return {'device_type': windowsInfo.computerName, 'device_model': windowsInfo.numberOfCores};
    } else {
      return {'device_type': null, 'device_model': null};
    }
  }
}
