import 'package:flutter/material.dart';

import '../Widget/CustomTextFormField.dart';
import 'LoginWithPass.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.close,
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Icon(
                Icons.shopify,
                size: 100,
                color: Colors.white,
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                "SHOP OVER 17",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const Text("MILLION PRODUCTS AT",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              const Text("UNBEATABLE PRICES",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              const SizedBox(
                height: 70,
              ),
              const Text(
                "Register or Login with Mobile Number",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 10.0,
              ),
              CustomTextFormField(
                hintText: "Enter Your Mobile No",
                prefixIcon: const Icon(
                  Icons.person_outline_rounded,
                  color: Colors.grey,
                ),
                controller: emailController,
              ),
              const SizedBox(
                height: 25.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginWIthPassword()));
                },
                child: const Text(
                  "Login with PassWord",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Expanded(
                          child: Divider(
                            height: 1.5,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Or Continue With",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            height: 1.5,

                            color: Colors.white,
                            //thickness of divider line
                          ),
                        ),
                      ])),
              const SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.indigo,
                        textColor: Colors.white,
                        child: Image.asset("assets/images/google.png"),
                        padding: EdgeInsets.all(16),
                        shape: CircleBorder(),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.indigo,
                        textColor: Colors.white,
                        child: Image.asset(
                          "assets/images/facebook.png",
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(16),
                        shape: const CircleBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
