import 'dart:math';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psms/views/add_new.dart';

import '../utils/colors.dart';
import 'home.dart';
import 'income_chart.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _selectedIndex = 1;
  final List pages = [const HomePage(), null, const IncomeChartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 1,
        letIndexChange: (index) {
          if (index == 1) {
            // dialog call for add button
            Get.to(const AddNewDialog());
          }
          return false;
        },
        buttonBackgroundColor: primaryColor,
        backgroundColor: Colors.transparent,
        color: primaryColor,
        items: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 350),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: _selectedIndex == 0
                        ? primaryColor.shade50
                        : Colors.transparent,
                    width: 2.5),
              ),
            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              icon: Icon(
                Icons.home,
                color:
                    _selectedIndex == 0 ? Colors.white : primaryColor.shade50,
                size: 35,
              ),
            ),
          ),
          const Icon(
            Icons.add,
            color: Colors.white,
            size: 40,
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 350),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: _selectedIndex == 2
                        ? primaryColor.shade50
                        : Colors.transparent,
                    width: 2.5),
              ),
            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              icon: Icon(
                Icons.bar_chart,
                color:
                    _selectedIndex == 2 ? Colors.white : primaryColor.shade50,
                size: 35,
              ),
            ),
          ),
        ],
        onTap: (index) => {
          setState(() {
            _selectedIndex = index;
          })
        },
      ),
    );
  }
}
