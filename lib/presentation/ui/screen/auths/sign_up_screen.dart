import 'package:flutter/material.dart';

import '../../widget/custom_elevated_button.dart';
import '../../widget/custom_input_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();

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
                  'Start with us',
                  style: TextStyle(fontWeight: .bold, fontSize: 28),
                ),
                Text(
                  'Sign up to continue',
                  style: TextStyle(fontWeight: .normal, fontSize: 16),
                ),

                CustomInputWidget(
                  emailController: _emailController,
                  hintText: 'First Name',
                ),
                CustomInputWidget(
                  emailController: _emailController,
                  hintText: 'Last Name',
                ),
                CustomInputWidget(
                  emailController: _emailController,
                  hintText: 'Email',
                ),
                CustomInputWidget(
                  emailController: _emailController,
                  hintText: 'Mobile',
                ),
                CustomInputWidget(
                  emailController: _emailController,
                  hintText: 'Password',
                ),

                SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                    text: 'Sign Up',
                    onPressed: () {},
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?'),
                    TextButton(onPressed: () {}, child: Text('Sign In')),
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


