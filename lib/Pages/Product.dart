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
    setState(() {
      _selectedPage = pageNo;
      _pageController.animateToPage(pageNo,
          duration: Duration(milliseconds: 600),
          curve: Curves.fastLinearToSlowEaseIn);
    });
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
                },
              );
            }),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _selectedPage = page;
              });
            },
            children: <Widget>[
              GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Container(
                            height: 150.0,
                            width: 150.0,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
                                    ),
                                    fit: BoxFit.contain)),
                          ),
                          const Text("category Name")
                        ],
                      ),
                    );
                  }),
              GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Container(
                            height: 150.0,
                            width: 150.0,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
                                    ),
                                    fit: BoxFit.contain)),
                          ),
                          const Text("category Name")
                        ],
                      ),
                    );
                  }),
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
  final VoidCallback onPress;
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
      onTap: onPress,
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
