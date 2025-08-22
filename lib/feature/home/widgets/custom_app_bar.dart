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
        icon: Icon(Icons.inbox_outlined, color: Colors.white, size: 24),
        onPressed: () {
          // Ação para notificações
        },
      ),
      IconButton(
        icon: Icon(
          Icons.mark_email_unread_outlined,
          color: Colors.white,
          size: 24,
        ),
        onPressed: () {
          // Ação para configurações
        },
      ),
    ],
  );
}
