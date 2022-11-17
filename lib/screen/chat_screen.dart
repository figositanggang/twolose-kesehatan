import 'package:flutter/material.dart';

class chatscreen extends StatelessWidget {
  const chatscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage("assets/dokter/dokter satu.jpg"),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dr.Novira Sulfianti,SP.M",
                style: TextStyle(fontSize: 16),),
                Text("Online",style: TextStyle(fontSize: 12),
                )
              ],
            )
          ],
        ),
      ),
      
    );
  }
}