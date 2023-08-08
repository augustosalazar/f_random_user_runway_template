import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import '../../domain/entities/random_user.dart';
import '../../domain/use_case/users.dart';

class UserController extends GetxController {
  //RxList<RandomUser> _users = <RandomUser>[].obs;
  //final List<RandomUser> _users = <RandomUser>[].obs;
  final _user =
      RandomUser(gender: 'd', name: 'n', email: 'e', city: '', picture: '')
          .obs();

  Users userUseCase = Get.find();

  RandomUser get users => _user;

  Future<void> getUser() async {
    logInfo("userController -> add user");
    await userUseCase.addUser();
  }
}
