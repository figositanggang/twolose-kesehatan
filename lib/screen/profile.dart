import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PROFILE")),
      body: Column(
        children: [
          Stack(
            children: [
              Container(color: Colors.purple,height: 300,),
              Container(
                margin: EdgeInsets.symmetric(vertical: 70,horizontal: 150),
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      image: DecorationImage(image: AssetImage("assets/profile.jpg"),fit: BoxFit.fill)
                    ),
                  ),
            ],
          ),
          Container(
            child: Text('MY PROFILE',
            style: TextStyle(fontSize: 30,
            color: Colors.black,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
            ),
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Icon(Icons.edit,
                size: 30,),
              )
            ],
          ),
          Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Colors.grey,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                  margin: EdgeInsets.only(left: 10),
                child: Text("First Name"),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("Kang "),
              )],
            ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                  margin: EdgeInsets.only(left: 10),
                child: Text("Last Name"),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("Daniel"),
              )],
            ),
                ),
                 Container(
                  margin: EdgeInsets.only(left: 10),
                child: Text("Email ID"),
              ),
               Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("daniel@mail.com"),
            )],
            ),
          ),
          
        ],
      ),
    );
  }
}