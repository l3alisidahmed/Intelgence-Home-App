import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:it/component/headApp.dart';

import '../component/BedRoomCard.dart';

class BedRoom extends StatefulWidget {
  const BedRoom({super.key});

  @override
  State<BedRoom> createState() => _BedRoomState();
}

class _BedRoomState extends State<BedRoom> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Nav(txt: "Bed Room"),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BedRoomCard(
                  ToggleIcon: Icons.toggle_off_outlined,
                  cardIcon: Icons.thermostat,
                  title: "Climate",
                  hours: "0hr 15min",
                ),
                BedRoomCard(
                  ToggleIcon: Icons.toggle_on,
                  cardIcon: Icons.ac_unit,
                  title: "Fan",
                  hours: "2hr 36min",
                  bgColor: "#4089cf",
                  powreOn: "ON",
                  color: Colors.white,
                  IconColor: "#ffffff",
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BedRoomCard(
                  ToggleIcon: Icons.toggle_on,
                  cardIcon: Icons.air,
                  title: "Purifier",
                  hours: "5hr 13min",
                  bgColor: "#4089cf",
                  powreOn: "ON",
                  color: Colors.white,
                  IconColor: "#ffffff",
                ),
                BedRoomCard(
                  ToggleIcon: Icons.toggle_off_outlined,
                  cardIcon: Icons.light,
                  title: "Light",
                  hours: "3hr 28min",
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BedRoomCard(
                  ToggleIcon: Icons.toggle_off_outlined,
                  cardIcon: Icons.hive_outlined,
                  title: "AC",
                  hours: "8hr 52min",
                ),
                BedRoomCard(
                  ToggleIcon: Icons.toggle_off_outlined,
                  cardIcon: Icons.camera_outdoor_sharp,
                  title: "Camera",
                  hours: "11hr 25min",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
