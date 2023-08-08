import 'package:get/get.dart';

import '../entities/random_user.dart';
import '../repositories/user_repository.dart';

class Users {
  UserRepository repository = Get.find();

  Future<RandomUser> addUser() async => await repository.getUser();
}
