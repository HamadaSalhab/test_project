import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final TextEditingController controller;

  const MySearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    const kHintColor = Color.fromRGBO(120, 120, 120, 1);
    const kFillColor = Color.fromRGBO(51, 51, 51, 1);
    const kBorderColor = Color.fromRGBO(80, 80, 80, 1);
    const kBorderWidth = 1.0;

    return TextField(
      controller: controller,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: 'Поиск',
        filled: true,
        fillColor: kFillColor,
        hintStyle: const TextStyle(color: kHintColor),
        prefixIcon: const Icon(Icons.search, color: kHintColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            width: kBorderWidth,
            color: kBorderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            width: kBorderWidth,
            color: kBorderColor,
          ),
        ),
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      ),
    );
  }
}
