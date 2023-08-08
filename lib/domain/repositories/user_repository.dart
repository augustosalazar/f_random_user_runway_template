import 'package:loggy/loggy.dart';
import '../../data/datasources/remote/user_remote_datasource.dart';
import '../entities/random_user.dart';

class UserRepository {
  late UserRemoteDatatasource remoteDataSource;

  UserRepository() {
    logInfo("Starting UserRepository");
    remoteDataSource = UserRemoteDatatasource();
  }

  Future<RandomUser> getUser() async {
    RandomUser user = await remoteDataSource.getUser();
    return user;
  }
}
