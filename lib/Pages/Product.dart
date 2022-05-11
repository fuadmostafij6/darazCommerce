import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 20.0,
        ),
        Text(
          "Just For You",
          style: TextStyle(fontSize: 15.0),
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
