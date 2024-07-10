// Suggested code may be subject to a license. Learn more: ~LicenseLog:644413251.
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController mailController = new TextEditingController();

  String email = '';
  final _formKey = GlobalKey<FormState>();

//   resetPassword() async {
//     try {
// // Suggested code may be subject to a license. Learn more: ~LicenseLog:2368822421.
//       await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
// // Suggested code may be subject to a license. Learn more: ~LicenseLog:2144619801.
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Password reset email sent')));
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('No user found for that email')));
//       } else if (e.code == 'invalid-email') {
//         ScaffoldMessenger.of(context)
//             .showSnackBar(SnackBar(content: Text('Invalid email')));
//       }
//     }
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 60),
            Container(
              alignment: Alignment.topCenter,
              child: Text(
                'Password Recovery',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            Text(
                'Enter your email and we will send you a link to reset your password'),
            Expanded(
                child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: ListView(
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 2),
                                  borderRadius: BorderRadius.circular(30)),
                              child: TextFormField(
                                controller: mailController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    hintText: 'Email',
                                    prefixIcon: Icon(Icons.person),
                                    border: InputBorder.none),
                              )),
                          SizedBox(height: 20),
                          GestureDetector(
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  setState(() {
                                    email = mailController.text;
                                  });
                                  // resetPassword();
                                }
                              },
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text('Send email')))
                        ],
                      ),
                    ))),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3881168149.
            SizedBox(height: 20),
            Text(
              'Back to Login',
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
