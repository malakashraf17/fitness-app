import 'package:flutter/material.dart';
import 'package:project/account_1.dart';
import 'package:project/chat_1.dart';
import 'package:project/training.dart';
import 'package:provider/provider.dart';
import 'favorite_1.dart';
import 'home.dart';
import 'nav_provider.dart';


class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => NavBar();
}

class NavBar extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavProvider>(context);

    return Container(
      width: double.infinity,
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          /// Home
          IconButton(
            onPressed: () {
              provider.changeIndex(0);

              provider.changeIndex(0);

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => FirstScreenhom(),
                ),
              );
            },
            icon: Icon(
              Icons.home,
              color: provider.currentIndex == 0
                  ? Colors.orange
                  : Colors.grey,
              size: 32,
            ),
          ),

          /// Favorite
          IconButton(
            onPressed: () {
              provider.changeIndex(1);

              provider.changeIndex(1);

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => Fav1(),
                ),
              );
            },
            icon: Icon(
              provider.currentIndex == 1
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: provider.currentIndex == 1
                  ? Colors.orange
                  : Colors.grey,
              size: 32,
            ),
          ),

          /// Fitness
          IconButton(
            onPressed: () {
              provider.changeIndex(2);
              provider.changeIndex(2);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => training(),
                ),
              );
            },
            icon: Icon(
              Icons.fitness_center,
              color: provider.currentIndex == 2
                  ? Colors.orange
                  : Colors.grey,
              size: 32,
            ),
          ),

          /// Chat
          IconButton(
            onPressed: () {
              provider.changeIndex(3);
              provider.changeIndex(3);

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => Chat1(),
                ),
              );
            },
            icon: Icon(
              Icons.chat,
              color: provider.currentIndex == 3
                  ? Colors.orange
                  : Colors.grey,
              size: 32,
            ),
          ),

          /// Account
          IconButton(
            onPressed: () {
              provider.changeIndex(4);
              provider.changeIndex(4);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => account(),
                ),
              );
            },
            icon: Icon(
              Icons.account_circle,
              color: provider.currentIndex == 4
                  ? Colors.orange
                  : Colors.grey,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}