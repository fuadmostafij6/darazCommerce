import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                "Reset Password",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "Please Enter the account that you want to reset the password"),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.text,
                  validator: (val) {
                    bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(val!);
                    if (val.isEmpty) {
                      return "your email is empty";
                    } else if (emailValid != true) {
                      return "your email is not valid";
                    }
                    return null;
                  },
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    focusColor: Colors.black,
                    //add prefix icon
                    // prefixIcon: const Icon(
                    //   Icons.person_outline_rounded,
                    //   color: Colors.black,
                    // ),

                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white30, width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.black,

                    hintText: "Enter Your Mobile Number",

                    //make hint text
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontFamily: "verdana_regular",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Center(
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                      ),
                      onPressed: () {},
                      child: const Text("Continue"))),
            )
          ],
        ),
      ),
    );
  }
}
