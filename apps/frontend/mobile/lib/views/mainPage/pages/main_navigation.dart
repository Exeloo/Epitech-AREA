import 'package:aether/views/applet/pages/applet_creation.dart';
import 'package:aether/views/faq/pages/faq_page.dart';
import 'package:aether/views/home/pages/home.dart';
import 'package:aether/views/market/pages/market_page.dart';
import 'package:aether/views/settings/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/colors.dart';

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  MainNavigationPageState createState() => MainNavigationPageState();
}

class MainNavigationPageState extends State<MainNavigationPage> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const HomePage(),
      const FAQPage(),
      const MarketPage(),
      const SettingsPage(),
    ];

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      backgroundColor: const Color(0xff1B1B1B),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(10.0)),
        child: BottomAppBar(
          color: AppColors.textSecondary,
          child: Container(
            height: 70.0,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => _onTabTapped(0),
                  icon: SvgPicture.asset('assets/icon/accueil.svg',
                      width: 24,
                      height: 24,
                      color: _currentIndex == 0
                          ? AppColors.textPrimary
                          : const Color(0xff686868)),
                ),
                IconButton(
                  onPressed: () => _onTabTapped(1),
                  icon: SvgPicture.asset('assets/icon/faq.svg',
                      width: 24,
                      height: 24,
                      color: _currentIndex == 1
                          ? AppColors.textPrimary
                          : const Color(0xff686868)),
                ),
                const SizedBox(width: 50),
                IconButton(
                  onPressed: () => _onTabTapped(2),
                  icon: SvgPicture.asset('assets/icon/panier.svg',
                      width: 24,
                      height: 24,
                      color: _currentIndex == 2
                          ? AppColors.textPrimary
                          : const Color(0xff686868)),
                ),
                IconButton(
                  onPressed: () => _onTabTapped(3),
                  icon: SvgPicture.asset('assets/icon/utilisateur.svg',
                      width: 24,
                      height: 24,
                      color: _currentIndex == 3
                          ? AppColors.textPrimary
                          : const Color(0xff686868)),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 80,
        width: 80,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const AppletCreation(),
              ),
            );
          },
          backgroundColor: AppColors.secondary,
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
            color: AppColors.textPrimary,
            size: 48,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
