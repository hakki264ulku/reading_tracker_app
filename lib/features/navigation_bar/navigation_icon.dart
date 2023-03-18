import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationIcon extends StatelessWidget {
  final VoidCallback? onPressMethod;
  final String iconPath;
  final String iconText;
  final bool selected;

  final TextStyle txtStyle = const TextStyle(
    fontFamily: "Baskervville",
    fontSize: 14,
    color: Color(0xFFFBFBFB),
  );

  const NavigationIcon(
      {Key? key,
      required this.onPressMethod,
      required this.iconPath,
      required this.iconText,
      required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (selected)
          SvgPicture.asset(
            "assets/icons/indicator3.svg",
            color: Color(0xFFFBFBFB),
            width: 20,
            height: 20,
          ),
        IconButton(
            color: Colors.red,
            onPressed: onPressMethod,
            icon: SvgPicture.asset(
              iconPath,
              color: selected ? Color(0xFF1A1D1E) : Color(0xFFFBFBFB),
              width: 24,
              height: 24,
            )),
        if (!selected)
          Text(
            iconText,
            style: txtStyle,
          ),
      ],
    );
  }
}
