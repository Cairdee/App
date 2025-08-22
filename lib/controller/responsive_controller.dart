import 'package:get/get.dart';

class ResponsiveController extends GetxController {
  final _screenWidth = 0.0.obs;

  double get screenWidth => _screenWidth.value;

  void updateScreenWidth(double width) {
    if (_screenWidth.value != width) {
      _screenWidth.value = width;
    }
  }

  bool isMobile() => screenWidth < 600;
  bool isTablet() => screenWidth >= 600;
}
