
import 'package:flutter/cupertino.dart';
import 'package:healthcare_app/devicetype.dart';

DeviceType getDeviceType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;
  double deviceWidth = 0;
  if (orientation == Orientation.landscape) {
    deviceWidth = mediaQuery.size.height;
  } else {
    deviceWidth = mediaQuery.size.width;
  }
  if (deviceWidth > 950) {
    return DeviceType.Desktop;
  }
  if (deviceWidth > 600) {
    return DeviceType.Tab;
  }
  return DeviceType.Mobile;
}