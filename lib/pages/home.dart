import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:it/component/device.dart';
import 'package:it/component/square.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#0f3944"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: HexColor("#ff7377"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        height: 80,
        color: HexColor("#1b4b55"),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.api_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.calendar_month_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconsSquare(),
                  Text(
                    "ProHome",
                    style: TextStyle(
                        color: HexColor("#64f7ad"),
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Image.asset(
                      '../../images/avatar.png',
                      height: 650,
                    ),
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      color: HexColor("#7a9298"),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              ),
              Container(
                child: Image.asset(
                  '../../images/weatherPic-0.png',
                  width: double.infinity,
                ),
              ),
              Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      HexColor("#3f7cd9"),
                      HexColor("#46e890"),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Energy",
                            style: TextStyle(
                                color: HexColor("#9fc3e9"),
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 8,
                        ),
                        Text("16.4 kwh",
                            style: TextStyle(
                                color: HexColor("#ffffff"),
                                fontWeight: FontWeight.bold,
                                fontSize: 28)),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "3 device turn on",
                          style: TextStyle(
                              color: HexColor("#ecf6f9"),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.bolt,
                        color: HexColor("#ea675e"),
                        size: 60,
                      ),
                    ),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                  text: "Devices",
                  children: [
                    TextSpan(
                      text: " (26)",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DeviceCard(),
                    SizedBox(
                      width: 15,
                    ),
                    DeviceCard(),
                    SizedBox(
                      width: 15,
                    ),
                    DeviceCard(),
                    SizedBox(
                      width: 15,
                    ),
                    DeviceCard(),
                    SizedBox(
                      width: 15,
                    ),
                    DeviceCard(),
                    SizedBox(
                      width: 15,
                    ),
                    DeviceCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
