import 'package:flutter/material.dart';

import '../presentation/ui/screen/auths/change_password_screen.dart';
import '../presentation/ui/screen/auths/sign_in_screen.dart';
import '../presentation/ui/screen/auths/sign_up_screen.dart';
import '../presentation/ui/screen/auths/verify_email_screen.dart';
import '../presentation/ui/screen/splash_screen.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangePasswordScreen(),
    );
  }
}
