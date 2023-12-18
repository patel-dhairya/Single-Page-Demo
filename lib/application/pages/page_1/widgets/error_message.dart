import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  final String errorMessage;
  const CustomErrorMessage({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.error,
          size: 40,
          color: Colors.redAccent,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          errorMessage,
          style: themeData.textTheme.headlineMedium,
        ),
      ],
    );
  }
}
