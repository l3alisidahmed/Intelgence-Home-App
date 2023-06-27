import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DeviceCard extends StatefulWidget {
  DeviceCard({super.key, required this.Ic, required this.Txt});
  var Ic;
  String Txt;

  @override
  State<DeviceCard> createState() => _DeviceCardState();
}

class _DeviceCardState extends State<DeviceCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: 115,
      height: 175,
      decoration: BoxDecoration(
        color: HexColor("#15303a"),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(widget.Ic, color: HexColor("#25e6eb"), size: 35),
          Container(
            child: Column(
              children: [
                Text(
                  widget.Txt,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "x3 Devices",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
