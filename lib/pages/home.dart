import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:it/component/Icon.dart';
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
    final Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("#0f3944"),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              width: _size.width,
              height: 80,
              // color: Colors.amber,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(_size.width, 80),
                    painter: BNBCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.4,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.add),
                      backgroundColor: HexColor("#ff7377"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Positioned(
                          left: 15,
                          child: Container(
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
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 45,
                        ),
                        Positioned(
                          right: 15,
                          child: Container(
                            width: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.calendar_month_outlined,
                                    size: 30,
                                    color: Colors.grey,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.settings_outlined,
                                    size: 30,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Iconns(icons: Icons.menu),
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Image.asset(
                    '../../images/weatherPic-0.png',
                    width: double.infinity,
                  ),
                ),
                SizedBox(
                  height: 30,
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
                SizedBox(
                  height: 35,
                ),
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
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
                SizedBox(
                  height: 35,
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
        ],
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = HexColor("#1a4953")
      ..style = PaintingStyle.fill;

    Path path = Path()..moveTo(0, 0);

    path.quadraticBezierTo(0, 0, size.width * 0.20, 0);
    path.quadraticBezierTo(size.width * 0.39, 0, size.width * 0.43, 35);
    path.quadraticBezierTo(size.width * 0.50, 70, size.width * 0.58, 35);
    path.quadraticBezierTo(size.width * 0.62, 0, size.width * 0.81, 0);
    path.quadraticBezierTo(size.width, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
