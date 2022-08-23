import 'package:flutter/material.dart';

class ListController{
  final TextEditingController emailController = TextEditingController();

  void login() {
    String text = emailController.text;
    print(text);
    emailController.text = 'Romuleta';
  }
}