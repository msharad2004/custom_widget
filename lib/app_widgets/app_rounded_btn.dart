import 'package:flutter/material.dart';

class AppRoundedBtn extends StatelessWidget {
  String btnName;
  VoidCallback onTap;
  double mWidth;
  Color bgColor;
  Color fgColor;
  IconData? mIcon;

  AppRoundedBtn(
      {super.key, required this.btnName,
      required this.onTap,
      this.mWidth = 200,
      this.bgColor = Colors.blue,
      this.fgColor = Colors.white,
      this.mIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mWidth,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: fgColor,
        ),
        child: mIcon != null
            ? Row(
                children: [
                  const Icon(Icons.login),
                  const SizedBox(
                    width: 11,
                  ),
                  Text(btnName)
                ],
              )
            : Text(btnName),
      ),
    );
  }
}
