import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:psms/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    final mediaHeight = MediaQuery.of(context).size.height;

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                width: mediaWidth * 1,
                height: mediaHeight * 0.05,
                color: primaryColor,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: mediaWidth * 0.9,
                  height: mediaHeight * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 222, 222, 222),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                      ]),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "17",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Due Today",
                            style: TextStyle(
                              color: secBodyTextColor,
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "15",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Picked",
                            style: TextStyle(
                              color: secBodyTextColor,
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "243",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Total",
                            style: TextStyle(
                              color: secBodyTextColor,
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "23",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Unpicked",
                            style: TextStyle(
                              color: secBodyTextColor,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: mediaWidth * 0.9,
            height: mediaHeight * 0.7,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Due Today",
                        style: TextStyle(
                          color: secBodyTextColor,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "Sort by",
                            style: TextStyle(
                              color: secBodyTextColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.sort),
                          ),
                        ],
                      )
                    ],
                  ),
                  // Card
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    margin: const EdgeInsets.only(bottom: 17),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        left: BorderSide(
                          width: 5,
                          color: Colors.green.shade400,
                        ),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 222, 222, 222),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: secBodyTextColor,
                                    size: 15,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "2024/11/9",
                                    style: TextStyle(
                                      color: secBodyTextColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "20,000 MMK",
                              style: TextStyle(
                                color: secBodyTextColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Samsung Galaxy A50",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Lock pyote.. br nyar thar ra kar, nay kyar kwar si, bla bla bla..",
                          style: TextStyle(
                            color: secBodyTextColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    margin: const EdgeInsets.only(bottom: 17),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        left: BorderSide(
                          width: 5,
                          color: Colors.red.shade400,
                        ),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 222, 222, 222),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: secBodyTextColor,
                                    size: 15,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "2024/11/9",
                                    style: TextStyle(
                                      color: secBodyTextColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "60,000 MMK",
                              style: TextStyle(
                                color: secBodyTextColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                        Text(
                          "IPhone 13 Pro",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Lock pyote.. br nyar thar ra kar, nay kyar kwar si, bla bla bla..",
                          style: TextStyle(
                            color: secBodyTextColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    margin: const EdgeInsets.only(bottom: 17),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        left: BorderSide(
                          width: 5,
                          color: Colors.green.shade400,
                        ),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 222, 222, 222),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: secBodyTextColor,
                                    size: 15,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "2024/11/9",
                                    style: TextStyle(
                                      color: secBodyTextColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "20,000 MMK",
                              style: TextStyle(
                                color: secBodyTextColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Samsung Galaxy A50",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Lock pyote.. br nyar thar ra kar, nay kyar kwar si, bla bla bla..",
                          style: TextStyle(
                            color: secBodyTextColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    margin: const EdgeInsets.only(bottom: 17),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        left: BorderSide(
                          width: 5,
                          color: Colors.red.shade400,
                        ),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 222, 222, 222),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: secBodyTextColor,
                                    size: 15,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "2024/11/9",
                                    style: TextStyle(
                                      color: secBodyTextColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "60,000 MMK",
                              style: TextStyle(
                                color: secBodyTextColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                        Text(
                          "IPhone 13 Pro",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Lock pyote.. br nyar thar ra kar, nay kyar kwar si, bla bla bla..",
                          style: TextStyle(
                            color: secBodyTextColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    margin: const EdgeInsets.only(bottom: 17),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        left: BorderSide(
                          width: 5,
                          color: Colors.green.shade400,
                        ),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 222, 222, 222),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: secBodyTextColor,
                                    size: 15,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "2024/11/9",
                                    style: TextStyle(
                                      color: secBodyTextColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "20,000 MMK",
                              style: TextStyle(
                                color: secBodyTextColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Samsung Galaxy A50",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Lock pyote.. br nyar thar ra kar, nay kyar kwar si, bla bla bla..",
                          style: TextStyle(
                            color: secBodyTextColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    margin: const EdgeInsets.only(bottom: 17),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        left: BorderSide(
                          width: 5,
                          color: Colors.red.shade400,
                        ),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 222, 222, 222),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: secBodyTextColor,
                                    size: 15,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "2024/11/9",
                                    style: TextStyle(
                                      color: secBodyTextColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "60,000 MMK",
                              style: TextStyle(
                                color: secBodyTextColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                        Text(
                          "IPhone 13 Pro",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Lock pyote.. br nyar thar ra kar, nay kyar kwar si, bla bla bla..",
                          style: TextStyle(
                            color: secBodyTextColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: primaryColor,
        letIndexChange: (index) {
          return false;
        },
        color: primaryColor,
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.add,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.align_vertical_bottom,
            // align_vertical_bottom, area_chart, assessment, assignment,
            color: Colors.white,
          )
        ],
        onTap: (index) => {},
      ),
    );
  }
}
