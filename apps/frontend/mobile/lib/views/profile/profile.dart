import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobile/graphql/__generated__/user.data.gql.dart';
import 'package:mobile/modules/graphql/repository/user_repository.dart';
import 'package:provider/provider.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  Page4State createState() => Page4State();
}

class Page4State extends State<Page4> {
  late UserRepository userRepository;
  GgetMeData_getMe? user;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _pronounController = TextEditingController();
  final TextEditingController _pictureController = TextEditingController();

  @override
  void initState() {
    super.initState();
    userRepository = Provider.of<UserRepository>(context, listen: false);
    _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    try {
      log('Fetching user data');
      final userData = await userRepository.getMe();
      setState(() {
        user = userData?.getMe;
        if (user != null) {
          _emailController.text = user!.email;
          _usernameController.text = user!.username;
          _firstNameController.text = user!.firstName;
          _lastNameController.text = user!.lastName;
          _descriptionController.text = user!.description ?? '';
          _pronounController.text = user!.pronoun ?? '';
          _pictureController.text = user!.picture ?? '';
        }
      });
      log('User data fetched');
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred: $e')),
      );
    }
  }

  Future<void> _updateUserData() async {
    if (user != null) {
      try {
        await userRepository.updateUser(
          email: _emailController.text,
          username: _usernameController.text,
          firstName: _firstNameController.text,
          lastName: _lastNameController.text,
          description: _descriptionController.text,
          pronoun: _pronounController.text,
        );
        _fetchUserData();
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('An error occurred: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color(0xff1B1B1B),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: const Color(0xff1B1B1B),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: user == null
            ? const Center(child: CircularProgressIndicator())
            : UserProfileForm(
                emailController: _emailController,
                usernameController: _usernameController,
                firstNameController: _firstNameController,
                lastNameController: _lastNameController,
                descriptionController: _descriptionController,
                pronounController: _pronounController,
                pictureController: _pictureController,
                onUpdateUserData: _updateUserData,
              ),
      ),
    );
  }
}

class UserProfileForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController usernameController;
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController descriptionController;
  final TextEditingController pronounController;
  final TextEditingController pictureController;
  final VoidCallback onUpdateUserData;

  const UserProfileForm({
    super.key,
    required this.emailController,
    required this.usernameController,
    required this.firstNameController,
    required this.lastNameController,
    required this.descriptionController,
    required this.pronounController,
    required this.pictureController,
    required this.onUpdateUserData,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(pictureController.text),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: usernameController,
            decoration: const InputDecoration(
              labelText: 'Username',
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: firstNameController,
            decoration: const InputDecoration(
              labelText: 'First Name',
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: lastNameController,
            decoration: const InputDecoration(
              labelText: 'Last Name',
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: descriptionController,
            decoration: const InputDecoration(
              labelText: 'Description',
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: pronounController,
            decoration: const InputDecoration(
              labelText: 'Pronoun',
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: onUpdateUserData,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              textStyle: const TextStyle(fontSize: 16),
              backgroundColor: const Color(0xff8E44AD),
            ),
            child: const Text(
              'Update Profile',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}