import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import '/screen/bottom.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://res.cloudinary.com/egisitampanmaut/image/upload/v1656665966/aw/Rectangle_1_hejx40.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              decoration: BoxDecoration(color: Colors.yellow.withOpacity(.15)),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Login", style: TextStyle(fontSize: 32)),
                  Divider(),
                  MyTF(label: "Username", password: false),
                  MyTF(label: "Password", password: true),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          await analytics.logEvent(
                            name: "login",
                            parameters: {
                              "full_text": "User telah login",
                            },
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => bottom()),
                            ),
                          );
                        },
                        child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyTF extends StatefulWidget {
  final String label;
  final bool password;

  const MyTF({Key? key, required this.label, required this.password})
      : super(key: key);

  @override
  State<MyTF> createState() => _MyTFState();
}

class _MyTFState extends State<MyTF> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      controller: controller,
      obscureText: widget.password,
      decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: TextStyle(color: Colors.white.withOpacity(.75))),
      onChanged: (val) {
        setState(
          () {
            controller = TextEditingController(text: val);
            controller.selection = TextSelection.fromPosition(
                TextPosition(offset: controller.text.length));
          },
        );
      },
    );
  }
}
