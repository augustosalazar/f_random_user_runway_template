import 'package:loggy/loggy.dart';
import '../../data/datasources/remote/user_remote_datasource.dart';
import '../entities/app_user.dart';
import '../entities/random_user.dart';

class UserRepository {
  late UserRemoteDatatasource remoteDataSource;

  UserRepository() {
    logInfo("Starting UserRepository");
    remoteDataSource = UserRemoteDatatasource();
  }

  Future<AppUser> getUser() async {
    RandomUser randomUser = await remoteDataSource.getUser();
    return AppUser.fromRandomUser(randomUser);
  }
}
