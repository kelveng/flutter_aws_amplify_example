import 'package:flutter/material.dart';

import 'package:flutter_aws_amplify/models/sing_up_credentials.dart';
import 'package:flutter_aws_amplify/services/analytics/analytics_events.dart';
import 'package:flutter_aws_amplify/services/analytics/analytics_service.dart';

class SignUpPage extends StatefulWidget {
  final VoidCallback shouldShowLogin;
  final ValueChanged<SignUpCredentials> didProvideCredentials;

  const SignUpPage({
    Key key,
    this.shouldShowLogin,
    this.didProvideCredentials,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 40),
          child: Stack(children: [
            // Sign Up Form
            _signUpForm(),

            // Login Button
            Container(
              alignment: Alignment.bottomCenter,
              child: FlatButton(
                  onPressed: () {
                    this.widget.shouldShowLogin();
                  },
                  child: Text('Already have an account? Login.')),
            )
          ])),
    );
  }

  Widget _signUpForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Username TextField
        TextField(
          controller: _usernameController,
          decoration:
              InputDecoration(icon: Icon(Icons.person), labelText: 'Username'),
        ),

        // Email TextField
        TextField(
          controller: _emailController,
          decoration:
              InputDecoration(icon: Icon(Icons.mail), labelText: 'Email'),
        ),

        // Password TextField
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(
              icon: Icon(Icons.lock_open), labelText: 'Password'),
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
        ),

        // Sign Up Button
        FlatButton(
            onPressed: _signUp,
            child: Text('Sign Up'),
            color: Theme.of(context).accentColor)
      ],
    );
  }

  void _signUp() {
    final username = _usernameController.text.trim();
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    final credentials =
        SignUpCredentials(username: username, email: email, password: password);
    this.widget.didProvideCredentials(credentials);
    AnalyticsService.log(SignUpEvent());
  }
}
