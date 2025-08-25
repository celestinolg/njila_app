import 'package:flutter/material.dart';

Widget customAppBar() {
  return AppBar(
    backgroundColor: Color(0xFF7B61FF).withAlpha(197),
    leading: Container(
      width: 48,
      height: 48,
      color: Colors.transparent,
      child: Icon(Icons.menu, color: Colors.white),
    ),
    title: Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage('assets/img/user_img.png'),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Olá!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              'Utilizador',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ],
        ),
      ],
    ),
    actions: [
      IconButton(
        icon: Image.asset(
          'assets/img/direct-normal.png',
          width: 32,
          height: 32,
        ),
        onPressed: () {
          // Ação para notificações
        },
      ),
      IconButton(
        icon: Image.asset(
          'assets/img/sms-notification.png',
          width: 32,
          height: 32,
        ),
        onPressed: () {
          // Ação para configurações
        },
      ),
    ],
  );
}
