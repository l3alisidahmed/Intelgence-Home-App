import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hexcolor/hexcolor.dart';

class CirlceIcon extends StatefulWidget {
  const CirlceIcon({super.key});

  @override
  State<CirlceIcon> createState() => _CirlceIconState();
}

class _CirlceIconState extends State<CirlceIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: HexColor("#234b55"),
      ),
      child: Icon(
        Icons.arrow_back,
        size: 35,
        color: Colors.white,
      ),
    );
  }
}
