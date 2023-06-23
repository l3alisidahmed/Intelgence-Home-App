import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hexcolor/hexcolor.dart';

class BedRoomCard extends StatefulWidget {
  BedRoomCard({super.key, required this.icon});
  var icon;

  @override
  State<BedRoomCard> createState() => _BedRoomCardState();
}

class _BedRoomCardState extends State<BedRoomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: HexColor("#20444e"),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "OFF",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    widget.icon,
                    size: 35,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Icon(
            Icons.thermostat,
            size: 50,
            color: HexColor("#23e1e6"),
          ),
          Text(
            "Climate",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 23,
            ),
          ),
          Text(
            "0hr 15min",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
