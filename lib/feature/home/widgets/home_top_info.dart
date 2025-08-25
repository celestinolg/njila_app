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
    padding: EdgeInsets.only(bottom: 16.0),
    decoration: BoxDecoration(
      color: Color(0xFF7B61FF).withAlpha(200),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40),
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
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: Colors.white.withAlpha(40), width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFF7B61FF),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: Image.asset(
                            'assets/img/run.png',
                            width: 87,
                            height: 87,
                          ),
                        ),
                        Positioned(
                          right: 4,
                          bottom: 4,
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: Color(0xFF55CB74),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white54,
                                width: 4,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '26 May',
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 15.0,
                          ),
                        ),

                        Text(
                          'Today',
                          style: TextStyle(
                            color: Color(0xFF55CB74),
                            fontSize: 19.0,
                          ),
                        ),
                        Text(
                          '01:09:44',
                          style: TextStyle(color: Colors.white, fontSize: 13.0),
                        ),
                      ],
                    ),
                  ],
                ),

                Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.flip(
                      flipX: true, // -90 degrees in radians
                      child: SizedBox(
                        height: 80,
                        width: 80,
                        child: CircularProgressIndicator(
                          value: indicatorValue,
                          backgroundColor: Colors.white24,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Color(0xFFE742EC),
                          ),
                          strokeWidth: 6,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.directions_walk_rounded,
                          color: Colors.white54,
                          size: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2345',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              height: 1.5,
                              width: 35,
                              decoration: BoxDecoration(color: Colors.white38),
                            ),
                            Text(
                              '5000',
                              style: TextStyle(
                                color: Color(0xFF55CB74),
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 16.0),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    color: Colors.white.withAlpha(40),
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '53,524',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    Row(
                      children: [
                        Image.asset(
                          'assets/img/steps.png',
                          width: 20,
                          height: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 4.0),
                        Text(
                          'Steps',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    color: Colors.white.withAlpha(40),
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '1000',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    Row(
                      children: [
                        Image.asset(
                          'assets/img/coin.png',
                          width: 20,
                          height: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 4.0),
                        Text(
                          'Earned Points',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
