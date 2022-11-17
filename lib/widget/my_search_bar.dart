
import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.search, color: Colors.black),
              Text("Cari...", style: TextStyle(color: Colors.black),),
            ],
          ),
          Row(
            children: [
              Icon(Icons.mic, color: Colors.black),
              Icon(Icons.camera, color: Colors.black),
            ],
          ),
        ],
      ),
    );
  }
}
