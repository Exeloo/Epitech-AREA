import 'package:flutter/material.dart';
import 'package:mobile/views/auth/pages/google_auth.dart';
import 'package:mobile/views/auth/pages/login.dart';
import 'package:mobile/views/auth/pages/signup.dart';

class MainAuthPage extends StatefulWidget {
  const MainAuthPage({super.key});

  @override
  MainAuthPageState createState() => MainAuthPageState();
}

class MainAuthPageState extends State<MainAuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff8E44AD)),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const SignUpPage(),
                      ),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: const Text('Sign Up',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff8E44AD)),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const LoginPage(),
                      ),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: const Text(
                    'Log In',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff8E44AD)),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const GoogleAuth(),
                      ),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: const Text('Google',
                      style: TextStyle(color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
