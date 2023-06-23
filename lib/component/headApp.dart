import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:it/component/Icon.dart';

class Nav extends StatefulWidget {
  Nav({super.key, required this.txt});
  String txt;

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Iconns(icons: Icons.arrow_back),
          Text(
            widget.txt,
            style: TextStyle(
              fontSize: 23,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Iconns(
            icons: Icons.add,
          ),
        ],
      ),
    );
  }
}
