import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  final bool isActive;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 55,
        width: double.infinity,
        child: ElevatedButton(
          child: Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            primary: isActive
                ? Color.fromARGB(255, 105, 112, 150)
                : Color.fromARGB(255, 165, 175, 233),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            textStyle: const TextStyle(color: Colors.white),
          ),
          onPressed: onClicked,
        ),
      );
}
