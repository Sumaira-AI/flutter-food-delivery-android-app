import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:my_app/screen/home_screen.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Future<UserCredential> signInWithGoogle() async {
    // Correct constructor for google_sign_in v7.x
    final GoogleSignIn googleSignIn = GoogleSignIn(scopes: <String>['email']);

    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser == null) {
      throw Exception("Sign-in cancelled");
    }

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/cc.jpg'),
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Sign in to continue'),
                  Text(
                    '𝓕𝓻𝓾𝓲𝓽𝔂',
                    style: TextStyle(
                      fontSize: 70,
                      color: Colors.black,
                      shadows: [
                        BoxShadow(
                          blurRadius: 5,
                          color: const Color.fromARGB(255, 245, 247, 245),
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SignInButton(
                        Buttons.apple,
                        text: "Sign up with Apple",
                        onPressed: () {},
                      ),
                      // with custom text
                      SignInButton(
                        Buttons.google,
                        text: "Sign up with Google",
                        onPressed: () {
                          signInWithGoogle().then(
                            (value) => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'by signing in you are agreeing to our',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 239, 236, 236),
                        ),
                      ),
                      Text(
                        'terms and policy',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 236, 232, 232),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
