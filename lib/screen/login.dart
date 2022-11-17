import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/form.dart';
import '../components/title.dart';
import '../provider/loginProvider.dart';
import 'beranda.dart';
import 'signUp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<LoginTFProvider>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PageTitle(title: "LOGIN"),
              SizedBox(height: 30),
              MyForm(
                controller: prov.email,
                label: "Email",
                onChanged: (val) => prov.setEmail = val,
              ),
              SizedBox(height: 10),
              MyForm(
                controller: prov.password,
                label: "Password",
                onChanged: (val) => prov.setPassword = val,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => SignUp())));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Beranda())));
                },
                child: Text("LOGIN"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 1, width: 150, color: Colors.grey),
                  Text(
                    "ATAU",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Container(height: 1, width: 150, color: Colors.grey),
                ],
              ),
              SizedBox(height: 20),
              PButton(
                icon: Icons.g_mobiledata,
                text: "Lanjutkan dengan Google",
                color: Colors.cyan,
              ),
              SizedBox(height: 20),
              PButton(
                icon: Icons.facebook,
                text: "Lanjutkan dengan Facebook",
                color: Colors.blue,
              ),
              SizedBox(height: 20),
              PButton(
                icon: Icons.yard,
                text: "Lanjutkan dengan Yahoo",
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const PButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            Text(text),
          ],
        ),
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          padding:
              MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 16)),
        ));
  }
}
