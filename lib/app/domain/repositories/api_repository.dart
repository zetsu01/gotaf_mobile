import 'package:gotaf/app/data/models/user_model.dart';
import 'package:gotaf/app/domain/request/login_request.dart';
import 'package:gotaf/app/domain/response/login_response.dart';

abstract class ApiRoporitoryInterface {
  Future<UserModel> getUserFromId(int id);
  Future<LoginResponse> login(LoginRequest loginRequest);
}
