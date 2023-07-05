import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:it/component/LivingRoomCard.dart';
import 'package:it/component/headApp.dart';

class LivingRoom extends StatefulWidget {
  const LivingRoom({super.key});

  @override
  State<LivingRoom> createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#0f3944"),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              Nav(txt: "Living Room"),
              SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LivingRoomCard(),
                    SizedBox(
                      width: 15,
                    ),
                    LivingRoomCard(),
                    SizedBox(
                      width: 15,
                    ),
                    LivingRoomCard(),
                    SizedBox(
                      width: 15,
                    ),
                    LivingRoomCard(),
                    SizedBox(
                      width: 15,
                    ),
                    LivingRoomCard(),
                    SizedBox(
                      width: 15,
                    ),
                    LivingRoomCard(),
                    SizedBox(
                      width: 15,
                    ),
                    LivingRoomCard(),
                    SizedBox(
                      width: 15,
                    ),
                    LivingRoomCard(),
                    SizedBox(
                      width: 15,
                    ),
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

class LivingPainteer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    Path path = Path()..moveTo(0, 0);

    path.quadraticBezierTo(0, 20, size.width * 0.10, 10);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.80, 0);
    path.quadraticBezierTo(size.width * 0.90, 10, size.width, 20);
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
