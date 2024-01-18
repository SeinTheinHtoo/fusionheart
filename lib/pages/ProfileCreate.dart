import 'package:flutter/material.dart';
import 'package:flutter_test_application/custom/constants/colors.dart';

class ProfileCreate extends StatefulWidget {
  const ProfileCreate({super.key});

  @override
  State<ProfileCreate> createState() => _ProfileCreateState();
}

class _ProfileCreateState extends State<ProfileCreate> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  bgColor,
    );
  }
} 