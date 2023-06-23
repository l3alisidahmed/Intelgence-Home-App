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
                BedRoomCard(icon: Icons.toggle_off_outlined),
                BedRoomCard(icon: Icons.toggle_on),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BedRoomCard(icon: Icons.toggle_on),
                BedRoomCard(icon: Icons.toggle_off_outlined),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BedRoomCard(icon: Icons.toggle_off_outlined),
                BedRoomCard(icon: Icons.toggle_off_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
