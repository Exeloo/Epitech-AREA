import 'package:flutter/material.dart';
import 'package:ferry/ferry.dart';
import 'package:mobile/graphql/graphql_client.dart';
import 'package:mobile/graphql/__generated__/auth.req.gql.dart';
import 'package:mobile/modules/auth/authHelper.dart';
import 'package:mobile/views/auth/pages/signup.dart';
import 'package:provider/provider.dart';
import 'package:mobile/modules/graphql/repository/authRepository.dart';

import '../../mainPage/pages/mainNavigation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late bool _isLogged = false;

  void _login() async {
    final authRepository = Provider.of<AuthRepository>(context, listen: false);

    try {
      final response = await authRepository.login(
          email: _emailController.text, password: _passwordController.text);
      final authHelper = AuthHelper();
      await authHelper.handleLogin(response);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const MainNavigationPage()),
          (Route<dynamic> route) => false);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Login in to your account',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Welcome back! Please enter your details.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (value) {
                        setState(() {
                          _rememberMe = value!;
                        });
                      },
                    ),
                    const Text('Remember me'),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Forgot password?'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: const TextStyle(fontSize: 16),
                backgroundColor: Color(0xff8E44AD), // Change la couleur
              ),
              child: const Text(
                'Sign in',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const SignUpPage()),
                    (Route<dynamic> route) => false);
              },
              child: const Text('Don\'t have an account? Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
