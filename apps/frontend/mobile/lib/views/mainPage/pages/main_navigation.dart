import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile/views/home/pages/home.dart';
import 'package:mobile/modules/graphql/repository/user_repository.dart';
import 'package:ferry/ferry.dart';
import 'package:provider/provider.dart';
import 'package:mobile/graphql/__generated__/user.data.gql.dart';

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
}

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  late UserRepository userRepository;
  GgetMeData_getMe? user;

  @override
  void initState() {
    super.initState();
    final client = Provider.of<Client>(context, listen: false);
    userRepository = UserRepository(client: client);
    _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    try {
      final userData = await userRepository.getMe();
      setState(() {
        user = userData?.getMe;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: user == null
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Raw User Data:'),
                    const SizedBox(height: 16),
                    Text(user.toString()),
                  ],
                ),
              ),
      ),
    );
  }
}