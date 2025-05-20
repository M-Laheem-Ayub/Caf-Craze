// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: AppBar(
          backgroundColor: Color(0xff0c0f14),
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 46, 51, 53),
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff272b2d).withValues(alpha: 0.5),
                    Color(0xff14181d).withValues(alpha: 0.3),
                  ],
                ),
              ),
              width: 50,
              height: 50,
              child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.grid_view_rounded,
                  color: Color(0xff4a4e52),
                  size: 18,
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 40,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Color.fromARGB(255, 46, 51, 53),
                    width: 0.5,
                  ),
                ),
                child: Image.asset(
                  "assets/images/profile_img.png",
                  // fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
