// lib/repositry/Screen/bottomnav/bottomnavigationscreen.dart
import 'package:chatapp/domain/constant/appcolor.dart';
import 'package:chatapp/repositry/Screen/chats/chatsscreen.dart';
import 'package:chatapp/repositry/Screen/contacts/contactsscreen.dart';
import 'package:chatapp/repositry/Screen/more/morescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    Contactsscreen(),
    ChatsScreen(), // class name must match chats screen below
    Morescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2_alt),
            label: "Contacts",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_fill),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: "More",
          ),
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.bottomdark
            : AppColors.bottomlight,
        selectedIconTheme: IconThemeData(
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.icondarkmode
              : AppColors.iconlightmode,
        ),
      ),
      body: IndexedStack(
        children: pages,
        index: currentIndex,
      ),
    );
  }
}
