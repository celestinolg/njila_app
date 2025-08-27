import 'package:flutter/material.dart';
import 'package:njila_app/feature/home/widgets/custom_app_bar.dart';
import 'package:njila_app/feature/home/widgets/history_section.dart';
import 'package:njila_app/feature/home/widgets/home_top_info.dart';
import 'package:njila_app/feature/home/widgets/share_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double metaValue = 15000;
  double currentValue = 11500;
  double indicatorValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/home_content.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [shareSection(), historySection(context)],
                ),
              ),
            ],
          ),
        ),
      ),
      /*bottomNavigationBar: Container(
        height: 60,
        color: Color(0xFF1C252E),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Image.asset(
                'assets/img/home-2.png',
                color: Colors.grey[400],
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/img/cup.png', color: Colors.grey[400]),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset(
                'assets/img/shopping-bag.png',
                color: Colors.grey[400],
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/img/user.png', color: Colors.grey[400]),
              onPressed: () {},
            ),
          ],
        ),
      ),*/
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: RadialGradient(
            radius: 10,
            colors: [Color(0xFF1C252E), Color(0xFF7B61FF)],
            // focalRadius: 60.0,
            //stops: [0.6, 0.85, 1.0],
          ),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Image.asset('assets/img/home-2.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/img/cup.png', color: Colors.grey[400]),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset(
                'assets/img/shopping-bag.png',
                color: Colors.grey[400],
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/img/user.png', color: Colors.grey[400]),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
