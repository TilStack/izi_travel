import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String? text;
  final bool obscureText;
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  const MyTextField({
    super.key, 
    required this.text,
    required this.controller,
    required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(12)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.orange),
            borderRadius: BorderRadius.circular(12)
          ),
          label: Text(text!, style: const TextStyle(color: Colors.black),),
          fillColor: Colors.white,
          filled: true
        ),
      ),
    );
  }
}