import 'package:flutter/material.dart';
import 'package:njila_app/feature/home/widgets/custom_app_bar.dart';
import 'package:njila_app/feature/home/widgets/home_top_info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double metaValue = 15000;
  double currentValue = 500;
  double indicatorValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF28333F),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: customAppBar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              homeTopInfo(
                metaValue: metaValue,
                currentValue: currentValue,
                indicatorValue: indicatorValue,
                context: context,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
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
                                    icon: Icon(
                                      Icons.share,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        currentValue += 500;
                                        currentValue = currentValue.clamp(
                                          0.0,
                                          metaValue,
                                        );
                                      });
                                    },
                                    label: Text('Share'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(
                                        0xFF2F3C50,
                                      ).withAlpha(20),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          25.0,
                                        ),
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
