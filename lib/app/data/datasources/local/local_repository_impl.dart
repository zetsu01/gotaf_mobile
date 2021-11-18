import 'package:gotaf/app/data/models/user_model.dart';
import 'package:gotaf/app/domain/repositories/local_storage_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const pref_token = 'TOKEN';
const pref_user_email = 'USER_EMAIL';
const pref_user_hasAudio = 'USER__HAS_AUDIO';
const pref_user_firstName = 'USER_FIRST_NAME';
const pref_user_image = 'USER_IMAGE';
const pref_user_ROLE = 'USER_ROLE';
const pref_user_PHONE = 'USER_PHONE';
const pref_user_id = 'USER_ID';
// const pref_user_audio = 'USER_AUDIO';
const pref_user_adress = 'USER_ADRESS';

class LocalReposotoryImpl extends LocalRepositoryInterface {
  final storage = new FlutterSecureStorage();

  @override
  Future<void> clearAllData() async {
    await storage.deleteAll();
  }

  @override
  Future<String?> getToken() async {
    return storage.read(key: pref_token);
  }

  @override
  Future<String> saveToken(String token) async {
    await storage.write(key: pref_token, value: token);
    return token;
  }

  @override
  Future<UserModel> getUser() async {
    final id = await storage.read(key: pref_user_id);
    final email = await storage.read(key: pref_user_email);
    final hasAudio = await storage.read(key: pref_user_hasAudio);
    final phone = await storage.read(key: pref_user_PHONE);
    final role = await storage.read(key: pref_user_ROLE);
    final firstName = await storage.read(key: pref_user_firstName);
    final image = await storage.read(key: pref_user_image);
    final adress = await storage.read(key: pref_user_adress);
    return UserModel(
      address: adress,
      email: email,
      firstName: firstName,
      id: int.tryParse(id.toString()),
      phone: phone,
      role: role,
      image: image,
      hasAudio: hasAudio == 'true' ? true : false,
    );
  }

  @override
  Future<UserModel> saveUser(UserModel user) async {
    await storage.write(key: pref_user_id, value: user.id.toString());
    await storage.write(key: pref_user_email, value: user.email);
    await storage.write(key: pref_user_hasAudio, value: user.hasAudio.toString());
    await storage.write(key: pref_user_PHONE, value: user.phone);
    await storage.write(key: pref_user_ROLE, value: user.role);
    await storage.write(key: pref_user_firstName, value: user.firstName);
    await storage.write(key: pref_user_image, value: user.image);
    await storage.write(key: pref_user_adress, value: user.address);
    return user;
  }
}
