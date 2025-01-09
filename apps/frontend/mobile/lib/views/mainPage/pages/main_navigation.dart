import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile/views/applet/pages/my_applets_page.dart';
import 'package:mobile/views/home/pages/home.dart';
import 'package:mobile/views/profile/profile.dart';

import '../../applet/pages/provider_selection.dart';

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
      const Page2(),
      const MyAppletsPage(),
      const Profile(),
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
          color: Colors.black,
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
                          ? Colors.white
                          : const Color(0xff686868)),
                ),
                IconButton(
                  onPressed: () => _onTabTapped(1),
                  icon: SvgPicture.asset('assets/icon/loupe.svg',
                      width: 24,
                      height: 24,
                      color: _currentIndex == 1
                          ? Colors.white
                          : const Color(0xff686868)),
                ),
                const SizedBox(width: 50),
                IconButton(
                  onPressed: () => _onTabTapped(2),
                  icon: SvgPicture.asset('assets/icon/liste.svg',
                      width: 24,
                      height: 24,
                      color: _currentIndex == 2
                          ? Colors.white
                          : const Color(0xff686868)),
                ),
                IconButton(
                  onPressed: () => _onTabTapped(3),
                  icon: SvgPicture.asset('assets/icon/utilisateur.svg',
                      width: 24,
                      height: 24,
                      color: _currentIndex == 3
                          ? Colors.white
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
                builder: (BuildContext context) => const ProviderSelection(),
              ),
            );
          },
          backgroundColor: const Color(0xff8E44AD),
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 48,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Bienvenue sur la page Accueil")),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Bienvenue sur la page Recherche")),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Bienvenue sur la page Mes Applets")),
    );
  }
}
