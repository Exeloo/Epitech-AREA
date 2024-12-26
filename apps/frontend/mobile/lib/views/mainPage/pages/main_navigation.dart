import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile/views/home/pages/home.dart';
import 'package:flutter/material.dart';

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
      const Page3(),
      const Page4(),
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
          onPressed: () {},
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
      body: Center(child: Text("Bienvenue sur la page Liste")),
    );
  }
}class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Determine if the screen is in portrait or landscape mode
          bool isPortrait = constraints.maxWidth < constraints.maxHeight;

          return Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: isPortrait ? 50 : 30,
                    backgroundImage: const NetworkImage('https://via.placeholder.com/150'),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: isPortrait ? 24 : 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'john.doe@example.com',
                    style: TextStyle(
                      fontSize: isPortrait ? 16 : 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Handle edit profile action
                      print('Edit Profile button pressed');
                    },
                    child: const Text('Edit Profile'),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      // Handle logout action
                      print('Logout button pressed');
                    },
                    child: const Text('Logout'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}