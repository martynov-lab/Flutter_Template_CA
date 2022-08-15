import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../constans/colors.dart';
import '../utils/mixins/app_mixins.dart';
import '../utils/services/toggle_obscure_password.dart';
import 'custom_icons.dart';

class InputWidget extends StatelessWidget with ValidatorMixin {
  final BuildContext context;
  final String hint;
  final TextEditingController controller;
  final bool isValidate;
  final bool obscure;
  final bool isObscureSecond;
  final TextInputType? keyboardNumber;
  final List<TextInputFormatter> maskForInput;
  InputWidget({
    Key? key,
    required this.context,
    required this.hint,
    required this.controller,
    required this.isValidate,
    required this.obscure,
    required this.isObscureSecond,
    required this.keyboardNumber,
    required this.maskForInput,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ToggleObscurePassword>(builder: ((context, service, child) {
      return TextFormField(
        inputFormatters: maskForInput,
        keyboardType: keyboardNumber,
        controller: controller,
        obscureText: obscure
            ? isObscureSecond
                ? service.isObscureSecond
                : service.isObscure
            : false,
        obscuringCharacter: '●',
        style: isValidate
            ? obscure
                ? Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: ColorApp.error, letterSpacing: 5)
                : Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: ColorApp.error)
            : obscure
                ? Theme.of(context)
                    .inputDecorationTheme
                    .labelStyle
                    ?.copyWith(letterSpacing: 5)
                : Theme.of(context).inputDecorationTheme.labelStyle,
        onEditingComplete: () => FocusScope.of(context).nextFocus(),
        decoration: InputDecoration(
          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
          filled: true,
          hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
          hintText: hint,
          errorStyle: TextStyle(color: Colors.transparent, fontSize: 0),
          enabledBorder: isValidate
              ? Theme.of(context).inputDecorationTheme.errorBorder
              : Theme.of(context).inputDecorationTheme.enabledBorder,
          focusedBorder: isValidate
              ? Theme.of(context).inputDecorationTheme.errorBorder
              : Theme.of(context).inputDecorationTheme.focusedBorder,
          suffixIcon: obscure
              ? GestureDetector(
                  child: isObscureSecond
                      ? service.isObscureSecond
                          ? const Icon(
                              CustomIcon.eye,
                              size: 20,
                            )
                          : const Icon(CustomIcon.closed_eye)
                      : service.isObscure
                          ? const Icon(
                              CustomIcon.eye,
                              size: 20,
                            )
                          : const Icon(CustomIcon.closed_eye),
                  onTap: () {
                    isObscureSecond ? service.toggleSecond() : service.toggle();
                  },
                )
              : null,
        ),
      );
      ;
    }));
  }
}
