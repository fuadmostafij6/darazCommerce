import 'package:daraz/Pages/Settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Settings()));
                },
                icon: const Icon(Icons.settings)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 15),
              color: Colors.deepOrange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text(
                        "4",
                        style: TextStyle(color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          "My WishList",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        "4",
                        style: TextStyle(color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          "Followed Stores",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        "4",
                        style: TextStyle(color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          "Voucher",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "My Orders",
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          "View All >",
                          style: TextStyle(
                              fontSize: 15.0, color: Colors.deepOrange),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Text(
                            "4",
                            style: TextStyle(color: Colors.black),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "To Pay",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            "4",
                            style: TextStyle(color: Colors.black),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "To Ship",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            "4",
                            style: TextStyle(color: Colors.black),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "To Receive",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            "4",
                            style: TextStyle(color: Colors.black),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "To Review",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.present_to_all),
                          SizedBox(
                            width: 5,
                          ),
                          Text("My Return")
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(Icons.present_to_all),
                          SizedBox(
                            width: 5,
                          ),
                          Text("My Cancellation")
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
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
