import 'package:flutter/material.dart';

class MyHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff1B1B1B),
      bottom: const TabBar(
        labelColor: Colors.white,
        tabAlignment: TabAlignment.center,
        indicatorColor: Color(0xff8E44AD),
        labelStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        dividerColor: Colors.transparent,
        tabs: [Tab(text: 'All'), Tab(text: 'Providers')],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
