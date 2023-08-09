import 'package:f_random_user_runway_template/domain/entities/app_user.dart';
import 'package:get/get.dart';
import '../repositories/user_repository.dart';

class Users {
  UserRepository repository = Get.find();

  Future<AppUser> getUser() async => await repository.getUser();
}
