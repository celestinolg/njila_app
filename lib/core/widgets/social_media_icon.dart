import 'package:flutter/material.dart';

class SocialMediaIcon extends StatelessWidget {
  final String icon;
  final VoidCallback? onTap;
  final double size;

  const SocialMediaIcon({
    super.key,
    required this.icon,
    this.onTap,
    this.size = 32.0,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(icon, width: size),
      onPressed: onTap,
      style: IconButton.styleFrom(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Colors.white12),
        ),
        backgroundColor: Color(0XFF2B3744),
      ),
    );
  }
}
