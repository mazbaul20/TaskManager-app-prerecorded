import 'package:flutter/material.dart';

import '../../widget/custom_elevated_button.dart';
import '../../widget/custom_input_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyle(fontWeight: .bold, fontSize: 28),
                ),
                Text(
                  'Sign In to continue',
                  style: TextStyle(fontWeight: .normal, fontSize: 16),
                ),

                CustomInputWidget(
                  emailController: _emailController,
                  hintText: 'Email',
                ),
                CustomInputWidget(
                  emailController: _passwordController,
                  hintText: 'Password',
                ),

                SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(text: 'Login', onPressed: () {}),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(onPressed: () {}, child: Text('Sign Up')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
