import 'package:local_auth/local_auth.dart';

class AuthService {

  final LocalAuthentication localAuth = LocalAuthentication();

  Future<bool> authenticateLocally() async {

    try {

      final bool authenticated = await localAuth.authenticate(
        localizedReason: 'Please authenticate to use this app',
        biometricOnly: true,
        persistAcrossBackgrounding: true,
      );

      return authenticated;

    } on LocalAuthException catch (e) {

      print('Authentication error: ${e.code}');
      return false;

    } catch (e) {

      print('Error: $e');
      return false;
    }
  }
}