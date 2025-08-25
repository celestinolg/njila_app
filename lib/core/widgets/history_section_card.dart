import 'package:flutter/material.dart';

Widget historySectionCard() {
  return Container(
    margin: EdgeInsets.only(top: 12.0),
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(16.0),
      border: Border.all(color: Colors.white24, width: 1.0),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '27 May',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 8.0),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '100 pt',
                    style: TextStyle(
                      color: Colors.red[400],
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  WidgetSpan(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 6.0),
                      width: 4.0,
                      height: 6.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: '12,4 km',
                    style: TextStyle(color: Colors.white54, fontSize: 16),
                  ),
                  WidgetSpan(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 6.0),
                      transformAlignment: Alignment.center,
                      width: 4.0,
                      height: 4.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: '1222 kcal',
                    style: TextStyle(color: Colors.white54, fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '10,120',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ' Steps',
                style: TextStyle(color: Colors.white54, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
