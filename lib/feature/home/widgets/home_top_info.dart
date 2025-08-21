import 'package:flutter/material.dart';

Widget homeTopInfo({
  required double metaValue,
  required double currentValue,
  required double indicatorValue,
  required BuildContext context,
}) {
  final progressWidth = MediaQuery.of(context).size.width;
  indicatorValue = (currentValue / metaValue);
  indicatorValue = indicatorValue.clamp(0.0, 1.0);
  return Container(
    width: double.infinity,
    height: 416.0,
    decoration: BoxDecoration(
      color: Color(0xFF7B61FF).withAlpha(200),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
      ),
      gradient: LinearGradient(
        colors: [Color(0xFF7B61FF), Color(0xFF7B61FF).withAlpha(50)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: '$currentValue/',
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              TextSpan(
                                text: metaValue.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: ' steps',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Level 5',
                          style: TextStyle(
                            color: Colors.yellow.shade600,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 10,
                      width: progressWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Stack(
                          children: [
                            Container(
                              width: (progressWidth - 104) * indicatorValue,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFB96FFF),
                                    Color(0xFF55CB74),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16),
              Image.asset('assets/img/Level_badge.png', width: 48, height: 48),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            width: double.infinity,
            height: 87,
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: Colors.white.withAlpha(40), width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/img/run.png', width: 87, height: 87),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
