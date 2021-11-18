import 'package:gotaf/app/data/models/user_model.dart';

abstract class LocalRepositoryInterface {
  Future<String?> getToken();
  Future<String> saveToken(String token);
  Future<void> clearAllData();
  Future<UserModel> saveUser(UserModel userModel);
  Future<UserModel> getUser();
}
