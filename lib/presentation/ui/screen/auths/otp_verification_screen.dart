import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../widget/custom_elevated_button.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  // _formKey
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final PinInputController _otpController = PinInputController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 30,
                  ),
                  child: MaterialPinFormField(
                    length: 6,
                    pinController: _otpController,
                    keyboardType: TextInputType.number,
                    theme: MaterialPinTheme(
                      shape: MaterialPinShape.outlined,
                      cellSize: const Size(47, 50),
                      borderRadius: BorderRadius.circular(8),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      borderColor: Colors.grey,
                      focusedBorderColor: Colors.blue,
                      fillColor: Colors.white,
                    ),
                    onChanged: (value) {
                      print("Typing: $value");
                    },
                    onCompleted: (pin) {
                      print("Enter Pin: $pin");
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: CustomElevatedButton(text: 'Confirm', onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
