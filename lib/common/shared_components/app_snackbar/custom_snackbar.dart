import 'package:flutter/material.dart';

import '../../constans/app_constants.dart';
import '../../constans/colors.dart';

class CustomSnackBar extends StatefulWidget {
  final String message;
  final Widget icon;
  final Widget button;
  final Color backgroundColor;
  final TextStyle textStyle;
  final int maxLines;
  final int iconRotationAngle;
  final List<BoxShadow> boxShadow;
  final BorderRadius borderRadius;
  final double iconPositionTop;
  final double iconPositionLeft;
  final EdgeInsetsGeometry messagePadding;
  final double textScaleFactor;

  const CustomSnackBar.success({
    Key? key,
    required this.message,
    this.button = const SizedBox(),
    this.messagePadding =
        const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
    this.icon = const Icon(
      Icons.sentiment_very_satisfied,
      color: Color(0x15000000),
      size: 200,
    ),
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontFamily: Font.sfText,
      fontSize: 18,
      color: Colors.white,
    ),
    this.maxLines = 2,
    this.iconRotationAngle = 32,
    this.iconPositionTop = -10,
    this.iconPositionLeft = -8,
    this.backgroundColor = ColorApp.success, //const Color(0xff00E676),
    this.boxShadow = kDefaultBoxShadow,
    this.borderRadius = kDefaultBorderRadius,
    this.textScaleFactor = 1.0,
  });

  const CustomSnackBar.info({
    Key? key,
    required this.message,
    this.button = const SizedBox(),
    this.messagePadding =
        const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
    this.icon = const Icon(
      Icons.sentiment_neutral,
      color: Color(0x15000000),
      size: 200,
    ),
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontFamily: Font.sfText,
      fontSize: 18,
      color: Colors.white,
    ),
    this.maxLines = 2,
    this.iconRotationAngle = 32,
    this.iconPositionTop = -10,
    this.iconPositionLeft = -8,
    this.backgroundColor = ColorApp.info, // const Color(0xff2196F3),
    this.boxShadow = kDefaultBoxShadow,
    this.borderRadius = kDefaultBorderRadius,
    this.textScaleFactor = 1.0,
  });

  const CustomSnackBar.error({
    Key? key,
    required this.message,
    this.button = const SizedBox(),
    this.messagePadding =
        const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
    this.icon = const Icon(
      Icons.error_outline,
      color: Color(0x15000000),
      size: 200,
    ),
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontFamily: Font.sfText,
      fontSize: 18,
      color: Colors.white,
    ),
    this.maxLines = 3,
    this.iconRotationAngle = 32,
    this.iconPositionTop = -10,
    this.iconPositionLeft = -8,
    this.backgroundColor = ColorApp.error, //const Color(0xffff5252),
    this.boxShadow = kDefaultBoxShadow,
    this.borderRadius = kDefaultBorderRadius,
    this.textScaleFactor = 1.0,
  });

  @override
  _CustomSnackBarState createState() => _CustomSnackBarState();
}

class _CustomSnackBarState extends State<CustomSnackBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      clipBehavior: Clip.hardEdge,
      height: widget.message.length > 30 ? 220 : 160,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: widget.borderRadius,
        boxShadow: widget.boxShadow,
      ),
      width: double.infinity,
      child:
          // Stack(
          //   children: [
          // Positioned(
          //   top: widget.iconPositionTop,
          //   left: widget.iconPositionLeft,
          //   child: Container(
          //     height: 95,
          //     child: Transform.rotate(
          //       angle: widget.iconRotationAngle * pi / 180,
          //       child: widget.icon,
          //     ),
          //   ),
          // ),
          Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: widget.messagePadding,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.message,
                  style: theme.textTheme.bodyText2?.merge(
                    widget.textStyle,
                  ),
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  maxLines: widget.maxLines,
                  textScaleFactor: widget.textScaleFactor,
                ),
              ),
              widget.button,
            ],
          ),
        ),
        // ),
        //  ],
      ),
    );
  }
}

const kDefaultBoxShadow = const [
  BoxShadow(
    color: Colors.black26,
    offset: Offset(0.0, 8.0),
    spreadRadius: 1,
    blurRadius: 30,
  ),
];

const kDefaultBorderRadius = const BorderRadius.all(Radius.circular(0));
