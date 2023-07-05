import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hexcolor/hexcolor.dart';

class LivingRoomCard extends StatefulWidget {
  const LivingRoomCard({super.key});

  @override
  State<LivingRoomCard> createState() => _LivingRoomCardState();
}

class _LivingRoomCardState extends State<LivingRoomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      decoration: BoxDecoration(
          color: HexColor("#205760"), borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.live_tv_sharp,
            size: 35,
            color: HexColor("#22d9de"),
          ),
          Text(
            "ON",
            style: TextStyle(
              color: Colors.white,
              // fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
