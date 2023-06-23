import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Iconns extends StatefulWidget {
  Iconns({super.key, required this.icons});
  var icons;

  @override
  State<Iconns> createState() => _IconnsState();
}

class _IconnsState extends State<Iconns> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: HexColor("#234b55"),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            widget.icons,
            size: 35,
            color: Colors.white,
          ),
        ));
  }
}