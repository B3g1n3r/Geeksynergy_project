import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../custom/customwidget.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _signup() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', _usernameController.text);
    prefs.setString('password', _passwordController.text);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Signup successful')),
    );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Signin',
              style: TextStyle(fontSize: 30),
            ),
            CustomTextField(
              controller: _usernameController,
              label: 'Username',
            ),
            CustomTextField(
              controller: _passwordController,
              label: 'Password',
              isPassword: true,
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Sign Up',
              onPressed: _signup,
            ),
          ],
        ),
      ),
    );
  }
}
