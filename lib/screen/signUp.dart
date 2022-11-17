import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/form.dart';
import '../components/title.dart';
import '../provider/signUp_provider.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<SUTFProvider>(context);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PageTitle(title: "SIGN UP"),
              Column(
                children: [
                  MyForm(
                    controller: prov.number,
                    label: "Number",
                    onChanged: (val) => prov.setNumber = val,
                  ),
                  SizedBox(height: 10),
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
                    keyboard: TextInputType.visiblePassword,
                  ),
                  SizedBox(height: 10),
                  MyForm(
                    controller: prov.rePassword,
                    label: "Re-Password",
                    onChanged: (val) => prov.setRePassword = val,
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("SIGN UP"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sudah punya akun?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => Login()),
                            ),
                          );
                        },
                        child: Text("Log in"),
                      ),
                    ],
                  )
                ],
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
