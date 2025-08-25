import 'package:flutter/material.dart';

Widget shareSection() {
  return Container(
    margin: EdgeInsets.only(top: 20.0),
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16.0),
      gradient: LinearGradient(
        colors: [Color(0xFF82AFFF), Color(0xFFF14985)],
        begin: Alignment.topLeft,
        stops: [0.2, 1.5],
        end: Alignment.bottomRight,
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Share & Get',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Get 2x point for every steps, only valid for today',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 2,
                ),
                SizedBox(height: 5.0),
                ElevatedButton.icon(
                  icon: Icon(Icons.share, color: Colors.white),
                  onPressed: () {},
                  label: Text('Share'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2F3C50).withAlpha(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16.0),
            bottomRight: Radius.circular(16.0),
          ),
          child: Image.asset(
            'assets/img/home_share.png',
            fit: BoxFit.cover,
            width: 150,
          ),
        ),
      ],
    ),
  );
}
