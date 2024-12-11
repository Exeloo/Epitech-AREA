import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile/pages/home.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomePage(),
      const Page2(),
      const Page3(),
      const Page4(),
    ];

    return Scaffold(
      body: pages[_currentIndex],
      backgroundColor: Color(0xff1B1B1B),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
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
                          : Color(0xff686868)),
                ),
                IconButton(
                  onPressed: () => _onTabTapped(1),
                  icon: SvgPicture.asset('assets/icon/loupe.svg',
                      width: 24,
                      height: 24,
                      color: _currentIndex == 1
                          ? Colors.white
                          : Color(0xff686868)),
                ),
                const SizedBox(width: 50),
                IconButton(
                  onPressed: () => _onTabTapped(2),
                  icon: SvgPicture.asset('assets/icon/liste.svg',
                      width: 24,
                      height: 24,
                      color: _currentIndex == 2
                          ? Colors.white
                          : Color(0xff686868)),
                ),
                IconButton(
                  onPressed: () => _onTabTapped(3),
                  icon: SvgPicture.asset('assets/icon/utilisateur.svg',
                      width: 24,
                      height: 24,
                      color: _currentIndex == 3
                          ? Colors.white
                          : Color(0xff686868)),
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
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Bienvenue sur la page Accueil")),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Bienvenue sur la page Recherche")),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Bienvenue sur la page Liste")),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Bienvenue sur la page Profil")),
    );
  }
}
