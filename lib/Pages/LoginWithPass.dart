import 'package:daraz/Pages/ResetPassword.dart';
import 'package:flutter/material.dart';

import '../Widget/CustomTextFormField.dart';

class LoginWIthPassword extends StatefulWidget {
  const LoginWIthPassword({Key? key}) : super(key: key);

  @override
  State<LoginWIthPassword> createState() => _LoginWIthPasswordState();
}

class _LoginWIthPasswordState extends State<LoginWIthPassword> {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "WelCome Back",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text("Login With your Password"),
            ),
            CustomTextFormField(
              controller: emailController,
              hintText: "Enter Your Mobile Number",
            ),
            CustomTextFormField(
              controller: emailController,
              hintText: "Enter Your Password",
              suffixIcon: const Icon(
                Icons.remove_red_eye,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ResetPassword()));
                  },
                  child: const Text("Forgot Password?")),
            ),
            Center(
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                      ),
                      onPressed: () {},
                      child: const Text("Login"))),
            )
          ],
        ),
      ),
    );
  }
}
