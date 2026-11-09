import 'package:flutter/material.dart';

import '../../widget/custom_elevated_button.dart';
import '../../widget/custom_input_widget.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
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
                  'A 6 digit code will sent to your email',
                  style: TextStyle(fontWeight: .normal, fontSize: 16),
                ),

                CustomInputWidget(
                  emailController: _emailController,
                  hintText: 'Email',
                ),

                SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                    text: 'Send OTP',
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
