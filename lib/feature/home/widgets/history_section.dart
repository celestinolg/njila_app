import 'package:flutter/material.dart';
import 'package:njila_app/core/widgets/history_section_card.dart';

Widget historySection(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 16.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'History',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/history');
              },
              child: Text(
                'See all',
                style: TextStyle(color: Color(0xFF7B61FF), fontSize: 16.0),
              ),
            ),
          ],
        ),
        historySectionCard(),
        historySectionCard(),
        historySectionCard(),
      ],
    ),
  );
}
