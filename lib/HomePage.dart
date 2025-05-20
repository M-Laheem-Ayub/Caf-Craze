// ignore_for_file: file_names, prefer_const_constructors_in_immutables

import 'package:cafe_craze/MyBottomNavbar.dart';
import 'package:cafe_craze/data/coffee_data.dart';
import 'package:cafe_craze/data/beans_data.dart';
import 'package:cafe_craze/BeansList.dart';
import 'package:cafe_craze/CategorySelector.dart';
import 'package:cafe_craze/CoffeeList.dart';
import 'package:cafe_craze/MyAppbar.dart';
import 'package:cafe_craze/MyText.dart';
import 'package:cafe_craze/SearchBox.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedNavbarItemIndex = 0;

  void setNavbarItemIndex(index) {
    setState(() {
      selectedNavbarItemIndex = index;
    });
  }

  List categories = [
    ["All", true],
    ["Cappuccino", false],
    ["Espresso", false],
    ["Americano", false],
    ["Macchiato", false],
  ];

  List<Map<String, dynamic>> selectedCoffeeList = [];

  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    selectedCoffeeList = [
      ...cappuccino,
      ...espresso,
      ...americano,
      ...macchiato,
    ];
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void onCategoryTap(int index) {
    setState(() {
      bool isJump = false;
      for (int i = 0; i < categories.length; i++) {
        if (categories[i][1] && categories[i][0] == "All") {
          isJump = true;
        }
        categories[i][1] = false;
      }
      categories[index][1] = true;

      String selectedCategory = categories[index][0];
      if (selectedCategory == "All") {
        selectedCoffeeList = [
          ...cappuccino,
          ...espresso,
          ...americano,
          ...macchiato,
        ];
      } else if (selectedCategory == "Cappuccino") {
        selectedCoffeeList = [...cappuccino];
      } else if (selectedCategory == "Espresso") {
        selectedCoffeeList = [...espresso];
      } else if (selectedCategory == "Americano") {
        selectedCoffeeList = [...americano];
      } else if (selectedCategory == "Macchiato") {
        selectedCoffeeList = [...macchiato];
      }
      if (isJump) {
        scrollController.jumpTo(0);
        isJump = false;
      } else {
        scrollController.animateTo(
          0,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0c0f14),
        appBar: MyAppbar(),
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                MyText(
                  text: "Find the best",
                  fWeight: FontWeight.bold,
                  size: 28,
                  height: 1.3,
                ),
                MyText(
                  text: "coffee for you",
                  fWeight: FontWeight.bold,
                  size: 28,
                  height: 1.3,
                ),
                SizedBox(height: 35),
                Searchbox(),
                SizedBox(height: 30),
                CategorySelector(
                  categories: categories,
                  onCategoryTap: onCategoryTap,
                ),
                Coffeelist(
                  scrollController: scrollController,
                  selectedList: selectedCoffeeList,
                ),
                SizedBox(height: 10),
                MyText(text: "Coffee beans", size: 16),
                SizedBox(height: 10),
                BeansList(selectedList: beansList),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
        bottomNavigationBar: MyBottomNavbar(
          selectedNavbarItemIndex: selectedNavbarItemIndex,
          setNavbarItemIndex: setNavbarItemIndex,
        ),
      ),
    );
  }
}
