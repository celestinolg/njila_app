import 'package:flutter/material.dart';
import 'package:njila_app/core/widgets/history_section_card.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF28333F),
      appBar: AppBar(
        title: Text('History'),
        backgroundColor: Color(0xFF28333F),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/img/direct-normal.png',
              width: 32,
              height: 32,
              color: Colors.white,
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
              color: Colors.white,
            ),
            onPressed: () {
              // Ação para configurações
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white12,
                ),
                child: IntrinsicHeight(
                  // garante altura para os divisores
                  child: Row(
                    children: [
                      // Primeiro bloco
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/img/timer.png',
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              '18,3 H',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'Time',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const VerticalDivider(
                        thickness: 2,
                        color: Colors.white24,
                      ),

                      // Segundo bloco
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/img/timer.png',
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              '48,7 KM',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'Distance',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const VerticalDivider(
                        thickness: 2,
                        color: Colors.white24,
                      ),

                      // Terceiro bloco
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/img/timer.png',
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              '123 BPM',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'Heart Beat',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/home_content.png'),
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.noRepeat,
                  ),
                ),
                child: Column(
                  children: [
                    historySectionCard(),
                    historySectionCard(),
                    historySectionCard(),
                    historySectionCard(),
                    historySectionCard(),
                    historySectionCard(),
                    historySectionCard(),
                    historySectionCard(),
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
