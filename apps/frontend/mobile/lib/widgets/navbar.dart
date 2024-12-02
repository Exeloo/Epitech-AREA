import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    Key? key,
  }) : super(key: key);

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      child: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: onPressed,
                icon: new Image.asset("assets/icon/accueil.png",
                    width: 40, height: 40, color: Colors.white)),
            IconButton(
                onPressed: onPressed,
                icon: new Image.asset("assets/icon/loupe.png",
                    width: 40, height: 40, color: Color(0xff686868))),
            const SizedBox(width: 50), // Ajoute un espace flexible
            IconButton(
                onPressed: onPressed,
                icon: new Image.asset("assets/icon/liste-a-puces.png",
                    width: 40, height: 40, color: Color(0xff686868))),
            IconButton(
                onPressed: onPressed,
                icon: new Image.asset("assets/icon/utilisateur.png",
                    width: 40, height: 40, color: Color(0xff686868))),
          ],
        ),
      ),
    );
  }
}
