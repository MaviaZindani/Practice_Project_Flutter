import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasedatabase/utils/utils.dart';
import 'package:firebasedatabase/widgets/roundButton.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class verifyCode extends StatefulWidget {
  String verificationId;
 verifyCode({super.key,required this.verificationId});

  @override
  State<verifyCode> createState() => _verifyCodeState();
}

class _verifyCodeState extends State<verifyCode> {
  bool isLoding = false;
  final phoneNumberController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'login with phone number',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            TextFormField(
          keyboardType: TextInputType.number,
              controller: phoneNumberController,
              decoration: InputDecoration(hintText: '+1 234 567 8901'),
            ),
            roundButton(
                title: 'login',
                color: Colors.deepPurple,
                onTab: () {
                  setState(() {
                    isLoding = true;
                  });
                  _auth.verifyPhoneNumber(
                      phoneNumber: phoneNumberController.text.toString(),
                      verificationCompleted: (_) {
                        setState(() {
                          isLoding = false;
                        });
                      },
                      verificationFailed: (e) {
                        setState(() {
                          isLoding = false;
                        });
                        Utils().toastMassage(e.toString());
                      },
                      codeSent: (String verificationId, int? token) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => verifyCode(
                                      verificationId: verificationId,
                                    )));
                                    setState(() {
                          isLoding = false;
                        });
                      },
                      codeAutoRetrievalTimeout: (e) {
                        Utils().toastMassage(e.toString());
                        setState(() {
                          isLoding = false;
                        });
                      });
                }),
          ],
        ),
      ),
    );
  }
}
