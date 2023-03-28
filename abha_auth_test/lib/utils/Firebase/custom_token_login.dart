import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

// Function to sign in user with custom token
Future<void> signInWithCustomToken(String customToken) async {
  try {
    UserCredential userCredential =
        await _auth.signInWithCustomToken(customToken);
    User? user = userCredential.user;
    print('User signed in: ${user?.uid}');
  } catch (e) {
    print('Error signing in with custom token: $e');
  }
}

// Function to get the current user object
User getCurrentUser() {
  User? user = _auth.currentUser;
  if (user != null) {
    print('Current user: ${user.uid}');
  } else {
    print('No user signed in');
  }
  return user!;
}
