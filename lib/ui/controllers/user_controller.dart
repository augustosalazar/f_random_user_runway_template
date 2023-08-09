import 'package:get/get.dart';
import 'package:loggy/loggy.dart';
import '../../domain/entities/app_user.dart';
import '../../domain/use_case/users.dart';

class UserController extends GetxController {
  Users userUseCase = Get.find();
  final started = false.obs;

  final Rx _user = AppUser.empty().obs;

  AppUser get user => _user.value;

  @override
  void onInit() {
    loadData();
    super.onInit();
  }

  loadData() async {
    logInfo("Loading initial user and fav users");
    await getUser();
  }

  Future<void> getUser() async {
    logInfo("userController -> get user");
    started.value = false;
    try {
      _user.value = await userUseCase.getUser();
      started.value = true;
    } catch (e) {
      logError(e);
    }
  }
}
