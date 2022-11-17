import 'package:flutter/material.dart';

import 'login.dart';
import 'signUp.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final List _cars = [
    "https://res.cloudinary.com/unlinked/image/upload/v1655968986/cars/all-new-ertiga-gray-removebg-preview_a5vhrc.png",
    "https://res.cloudinary.com/unlinked/image/upload/v1655969053/cars/5_20Kehebatan_20Toyota_20C-HR_20Hybrid_w33dkz.png",
    "https://res.cloudinary.com/unlinked/image/upload/v1655969135/cars/new-red_g9mzyd.png",
    "https://res.cloudinary.com/unlinked/image/upload/v1655969242/cars/2061846172_ypqya1.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Column(
                children: [
                  Title(text: "WELCOME TO"),
                  Title(text: "GARASI.COM"),
                ],
              ),
              SizedBox(height: 30),
              GridCar(),
            ],
          ),
          Column(
            children: [
              PrimButton(
                child: Text("LOGIN"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => Login()),
                    ),
                  );
                },
              ),
              SizedBox(height: 10),
              Text("Or"),
              SizedBox(height: 10),
              PrimButton(
                child: Text("SIGN UP"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => SignUp()),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  final String text;

  const Title({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(100, 50, 50, 1),
      ),
    );
  }
}

class GridCar extends StatelessWidget {
  const GridCar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Car(
                url:
                    "https://res.cloudinary.com/unlinked/image/upload/v1655968986/cars/all-new-ertiga-gray-removebg-preview_a5vhrc.png"),
            Car(
                url:
                    "https://res.cloudinary.com/unlinked/image/upload/v1655969053/cars/5_20Kehebatan_20Toyota_20C-HR_20Hybrid_w33dkz.png"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Car(
                url:
                    "https://res.cloudinary.com/unlinked/image/upload/v1655969135/cars/new-red_g9mzyd.png"),
            Car(
                url:
                    "https://res.cloudinary.com/unlinked/image/upload/v1655969242/cars/2061846172_ypqya1.png"),
          ],
        ),
      ],
    );
  }
}

class Car extends StatelessWidget {
  final String url;

  const Car({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      width: 150,
    );
  }
}

class PrimButton extends StatelessWidget {
  final Widget child;
  final onPressed;

  const PrimButton({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 50,
      child: ElevatedButton(
        child: child,
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20)),
      ),
    );
  }
}
