import 'package:daraz/Widget/CustomTextFormField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountInformation extends StatefulWidget {
  const AccountInformation({Key? key}) : super(key: key);

  @override
  State<AccountInformation> createState() => _AccountInformationState();
}

class _AccountInformationState extends State<AccountInformation> {
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Account Information",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.grey.shade100,
              child: ListTile(
                trailing: const Text(
                  "Mostafij >",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Spacer(),
                                const Text(
                                  "Name",
                                  style: TextStyle(fontSize: 20),
                                ),
                                const Spacer(),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 10),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(
                                        Icons.close,
                                        color: Colors.black,
                                      ),
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 25),
                                child: Text(
                                  "First Name",
                                  style: TextStyle(color: Colors.greenAccent),
                                ),
                              ),
                            ),
                            Form(
                                child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 22),
                              child: CustomTextFormField(
                                controller: nameController,
                                suffixIcon: Icon(Icons.close_outlined),
                              ),
                            ))
                          ],
                        );
                      });
                },
                title: const Text("Name"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.grey.shade100,
              child: ListTile(
                trailing: const Text(
                  ">",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const AccountInformation()));
                },
                title: const Text("Change Password"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.grey.shade100,
              child: ListTile(
                trailing: const Text(
                  "01798172012 >",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const AccountInformation()));
                },
                title: const Text("Change Mobile"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.grey.shade100,
              child: ListTile(
                trailing: const Text(
                  "fudmostafij6@gmail.com >",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const AccountInformation()));
                },
                title: const Text("Change Email"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.grey.shade100,
              child: ListTile(
                trailing: const Text(
                  "Male >",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const AccountInformation()));
                },
                title: const Text("Gender"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.grey.shade100,
              child: ListTile(
                trailing: const Text(
                  "1998-02-02 >",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const AccountInformation()));
                },
                title: const Text("Birthday"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
