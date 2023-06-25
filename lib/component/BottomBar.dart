import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hexcolor/hexcolor.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
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
                  Positioned(
                    bottom: 20,
                    right: 25,
                    left: 25,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround
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
                ],
              ),
            ),
          )
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

    path.quadraticBezierTo(0, 0, size.width * 0.33, 0);
    path.quadraticBezierTo(size.width * 0.38, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(50), clockwise: false);
    path.quadraticBezierTo(size.width * 0.62, 0, size.width * 0.68, 0);
    path.quadraticBezierTo(size.width * 0.70, 0, size.width, 0);
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
