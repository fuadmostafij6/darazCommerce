import 'package:daraz/Pages/SearchScreen.dart';
import 'package:flutter/material.dart';

import '../Item/Carousel.dart';
import '../Item/Category.dart';
import 'Product.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(
            Icons.qr_code_2_outlined,
            color: Colors.white,
          ),
          title: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            height: 35.0,
            child: Center(
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Search()));
                  },
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "Search Here",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    ],
                  )),
            ),
          ),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(Icons.currency_bitcoin_outlined)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [Carousel(), Category(), Product()],
          ),
        ));
  }
}
