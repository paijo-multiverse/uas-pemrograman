import 'package:flutter/material.dart';
import 'package:myapp/pages/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFff5c30),
                    Color(0xFFe74b1a),
                  ],
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: const Text(''),
            ),
            Container(
              margin: const EdgeInsets.only(top: 60, left: 20, right: 20),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: MediaQuery.of(context).size.width / 1.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text('Sign Up',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        SizedBox(height: 30),
                        TextField(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1997085966.
                            decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline),
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'Name',
                        )),
                        SizedBox(height: 10),
                        TextField(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1997085966.
                            decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'Email',
                        )),
                        SizedBox(height: 10),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline),
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: 'Password',
                          ),
                        ),
                        SizedBox(height: 40),
                        Container(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(350, 35),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7)),
                                  backgroundColor: Colors.orange),
                                onPressed: () {}, child: Text("Daftar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))),
                        SizedBox(height: 30),
                        Text('Sudah punya akun?',
                            style: TextStyle(color: Colors.grey)),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => LogIn()));
                            },
                            child: Text('Log In'))
                      ]),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
