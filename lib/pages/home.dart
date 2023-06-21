import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 15, top: 15, right: 15),
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
                      'assetsimages/avatar.png',
                      width: 10,
                      height: 10,
                    ),
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              ),
              Container(
                child: Image.asset('assets/images/weatherPic-0.png'),
              ),
              Container(
                height: 125,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 233, 159),
                  borderRadius: BorderRadius.circular(15),
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
