import 'package:firebase_auth/firebase_auth.dart';
import 'package:flight_guh_02/models/user.dart';
import 'package:flight_guh_02/services/user_service.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp(
      {required String email,
      required String password,
      required String name,
      String hobby = ''}) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      UserModel user = UserModel(
          id: userCredential.user!.uid,
          email: email,
          name: name,
          hobby: hobby,
          balance: 280000);
      await UserService().setUser(user);

      return user;
    } catch (e) {
      throw e;
    }
  }
}
