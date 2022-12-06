import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../routes/app_pages.dart';

class LandingController extends GetxController {
  final getStorge = GetStorage();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  login() {
    getStorge.write("id", 1);
    getStorge.write("name", "test");
    Get.offAllNamed(Routes.LOGIN);
  }

  guest() {
    getStorge.write("id", 1);
    getStorge.write("name", "test");
    Get.offAllNamed(Routes.HOME);
  }
}