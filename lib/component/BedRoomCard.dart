import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hexcolor/hexcolor.dart';

class BedRoomCard extends StatefulWidget {
  BedRoomCard({
    super.key,
    required this.ToggleIcon,
    required this.cardIcon,
    required this.title,
    required this.hours,
    this.bgColor = "#20444e",
    this.powreOn = "OFF",
    this.color = Colors.grey,
    this.IconColor = "#23e1e6",
  });

  String powreOn;
  String title;
  String hours;
  var color;
  var cardIcon;
  var ToggleIcon;
  var IconColor;
  String bgColor;

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
        color: HexColor(widget.bgColor),
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
                  widget.powreOn,
                  style: TextStyle(
                    color: widget.color,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    widget.ToggleIcon,
                    size: 35,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Icon(
            widget.cardIcon,
            size: 50,
            color: HexColor(widget.IconColor),
          ),
          Text(
            widget.title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 23,
            ),
          ),
          Text(
            widget.hours,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
