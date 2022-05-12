import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int _selectedPage = 0;
  final PageController _pageController = PageController();

  void _changePage(int pageNo) {
    _selectedPage = pageNo;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20.0,
        ),
        const Text(
          "Just For You",
          style: TextStyle(fontSize: 15.0),
        ),
        const SizedBox(
          height: 20.0,
        ),

        /// problem kothai.
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StatefulBuilder(builder: (_, setStateee) {
              return TabButton(
                text: 'All',
                selectedPage: _selectedPage,
                pageNumber: 0,
                onPress: () {
                  _changePage(0);

                  // setState(() {
                  //   _changePage(0);
                  // });
                },
              );
            }),
            StatefulBuilder(builder: (_, setStateee) {
              return TabButton(
                text: 'Mail',
                selectedPage: _selectedPage,
                pageNumber: 1,
                onPress: () {
                  _changePage(1);

                  // setState(() {
                  //   _changePage(0);
                  // });
                },
              );
            }),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Container(
          height: 500,
          child: PageView(
            children: <Widget>[
              Center(
                child: Text("faf"),
              ),
              Center(
                child: Text("fa"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// TabButton StateFull nichen kano.? vaia stateless e niesilam tkhn r ekta error ashsilo okhane silo j stateless a setstate hbe na amn r ki // ok wait

class TabButton extends StatelessWidget {
  final String text;
  final int pageNumber;
  final int selectedPage;
  final Function onPress;
  const TabButton(
      {Key? key,
      required this.text,
      required this.pageNumber,
      required this.selectedPage,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress(),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Text(
          text,
          style: TextStyle(
              color: selectedPage == pageNumber
                  ? Colors.deepOrange
                  : Colors.black),
        ),
      ),
    );
  }
}
