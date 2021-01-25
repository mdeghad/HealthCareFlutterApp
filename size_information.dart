import 'package:flutter/widgets.dart';
import 'package:healthcare_app/devicetype.dart';

class SizingInformation {
  final Orientation orientation;
  final DeviceType deviceType;
  final Size screenSize;
  final Size localWidgetSize;
  SizingInformation({
    this.orientation,
    this.deviceType,
    this.screenSize,
    this.localWidgetSize,
  });
  @override
  String toString() {
    return 'Orientation:$orientation DeviceType:$deviceType ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize';
  }
}