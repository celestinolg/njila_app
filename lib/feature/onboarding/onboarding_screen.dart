import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:njila_app/core/theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int currentPage = 0;
  int lengthPage = 3;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: currentPage,
      viewportFraction: 0.8,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkTheme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppTheme.darkTheme.scaffoldBackgroundColor,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/login');
            },
            child: const Text(
              'Skip',
              style: TextStyle(color: AppColors.textoClaro, fontSize: 16),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Image.asset(
                'assets/img/onboard_run.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            AspectRatio(
              aspectRatio: 1.001,
              child: PageView.builder(
                itemCount: lengthPage,
                physics: const ClampingScrollPhysics(),
                controller: _pageController,
                itemBuilder: (context, index) {
                  return carouselView(index);
                },
              ),
            ),

            Text.rich(
              TextSpan(
                text: 'Already have an account?',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textoClaro,
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: ' Sign In',
                    style: const TextStyle(
                      color: Color(0xff7B61FF),
                      fontSize: 16,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).pushReplacementNamed('/login');
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget carouselView(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0.0;
        if (_pageController.position.haveDimensions) {
          value = index.toDouble() - (_pageController.page ?? 0);
          value = value.abs();
          value = (value * 0.2).clamp(-1, 1);
        }
        value = value == 0 ? 0.05 : value;
        return Transform.scale(
          scale: 1 - 0.1,
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 100),
            opacity: 1 - value * 2,
            child: carouselCard(),
          ),
        );
      },
    );
  }

  Widget carouselCard() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(32),
      width: double.infinity,
      //height: 303,
      decoration: BoxDecoration(
        color: Color(0xff2F3C50),
        borderRadius: BorderRadius.circular(64),
        border: Border.all(
          color: Color(0x34FFFFFF),
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Run',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Track your runs, earn rewards, and stay fit with our app.',
            style: TextStyle(color: Colors.white, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SmoothPageIndicator(
            controller: _pageController,
            count: lengthPage,
            effect: ExpandingDotsEffect(
              dotColor: Colors.white54,
              activeDotColor: Color(0xff7B61FF),
              dotHeight: 8,
              dotWidth: 10,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 800),
                curve: Curves.easeInOut,
              );
              if (_pageController.page?.round() == 2) {
                Navigator.of(context).pushNamed('/login');
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0XFF7B61FF),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Next',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 10),
                Icon(Icons.arrow_forward, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
