import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text(
                "Shop More >",
                style: TextStyle(fontSize: 15.0, color: Colors.deepOrange),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
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
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
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
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
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
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
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
              ),
            ],
          ),
        )
      ],
    );
  }
}
