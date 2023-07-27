import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  signInWithGoogle() async {
    try {
      //begin interactive sign in process
      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
      if (gUser != null) {
        //obtain auth details from request
        final GoogleSignInAuthentication gAuth = await gUser.authentication;

        //create a new credential for user
        final AuthCredential authcredential = GoogleAuthProvider.credential(
          accessToken: gAuth.accessToken,
          idToken: gAuth.idToken,
        );

        //finally, lets sign in
        final UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(authcredential);
        return userCredential.user;
      }
      return null;
    } catch (e) {
      print("Error during Google SignIn: $e");
      return null;
    }
  }
}
