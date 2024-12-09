import 'package:flutter/material.dart';

class MyHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyHomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      bottom: const TabBar(
        tabs: [
          Tab(text: 'All'),
          Tab(text: 'Providers'),
        ],
      ),
    );
  }

  // Implémente la taille préférée (obligatoire pour PreferredSizeWidget)
  @override
  Size get preferredSize => const Size.fromHeight(100); // Ajustez la hauteur selon vos besoins
}
