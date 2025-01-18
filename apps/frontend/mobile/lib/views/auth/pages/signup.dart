import 'package:aether/modules/graphql/repository/auth_repository.dart';
import 'package:aether/modules/graphql/repository/user_repository.dart';
import 'package:aether/views/auth/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../config/colors.dart';
import '../../../modules/auth/auth_helper.dart';
import '../../mainPage/pages/main_navigation.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  void _signup() async {
    final userRepository = Provider.of<UserRepository>(context, listen: false);
    final authRepository = Provider.of<AuthRepository>(context, listen: false);

    try {
      await userRepository.register(
          email: _emailController.text,
          password: _passwordController.text,
          username: _usernameController.text,
          firstName: _firstNameController.text,
          lastName: _lastNameController.text);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred: $e')),
      );
    }

    try {
      final loginReponse = await authRepository.login(
          email: _emailController.text, password: _passwordController.text);
      final authHelper = AuthHelper();
      await authHelper.handleLogin(loginReponse);
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
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Create an account',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'The adventure begins here',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: AppColors.textPrimary),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textPrimary),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textPrimary),
                ),
              ),
              style: const TextStyle(color: AppColors.textPrimary),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: AppColors.textPrimary),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textPrimary),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textPrimary),
                ),
              ),
              style: const TextStyle(color: AppColors.textPrimary),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: AppColors.textPrimary),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textPrimary),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textPrimary),
                ),
                helperText: 'Must be at least 8 characters',
                helperStyle: TextStyle(color: Colors.grey),
              ),
              style: const TextStyle(color: AppColors.textPrimary),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _firstNameController,
              decoration: const InputDecoration(
                labelText: 'First Name',
                labelStyle: TextStyle(color: AppColors.textPrimary),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textPrimary),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textPrimary),
                ),
              ),
              style: const TextStyle(color: AppColors.textPrimary),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _lastNameController,
              decoration: const InputDecoration(
                labelText: 'Last Name',
                labelStyle: TextStyle(color: AppColors.textPrimary),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textPrimary),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textPrimary),
                ),
              ),
              style: const TextStyle(color: AppColors.textPrimary),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _signup,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: const TextStyle(fontSize: 16),
                backgroundColor: const Color(0xff8E44AD),
              ),
              child: const Text('Get started',
                  style: TextStyle(color: AppColors.textPrimary)),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const LoginPage()),
                    (Route<dynamic> route) => false);
              },
              child: const Text('Already have an account ? Log in',
                  style: TextStyle(color: AppColors.textPrimary)),
            ),
          ],
        ),
      ),
    );
  }
}
