import 'package:flutter/material.dart';
import '../../../../common/constans/colors.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final VoidCallback? onPressed;
  final bool isActive;

  const ButtonWidget({
    Key? key,
    required this.text,
    this.style,
    required this.onPressed,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 55,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            primary: isActive
                ? ColorApp.yellowButton
                : Theme.of(context).disabledColor,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            textStyle: const TextStyle(color: Colors.white),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: isActive
                ? Theme.of(context).textTheme.button
                : Theme.of(context).textTheme.button!.copyWith(
                    color: ColorApp
                        .textButtonNotActive), //style ?? const TextStyle(fontSize: 20),
          ),
        ),
      );
}
