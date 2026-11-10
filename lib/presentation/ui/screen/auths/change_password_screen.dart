import 'package:flutter/material.dart';

import '../../widget/custom_elevated_button.dart';
import '../../widget/custom_input_widget.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
                  'Change Your Password',
                  style: TextStyle(fontWeight: .w800, fontSize: 18),
                ),

                CustomInputWidget(
                  emailController: _emailController,
                  hintText: 'New Password',
                ),

                CustomInputWidget(
                  emailController: _emailController,
                  hintText: 'Confirm Password',
                ),

                SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                    text: 'Next',
                    onPressed: () {},
                  ),
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
