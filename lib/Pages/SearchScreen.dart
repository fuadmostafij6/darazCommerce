import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        title: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          height: 35.0,
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                focusColor: Colors.white,
                contentPadding:
                    const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(color: Colors.deepOrange, width: 1.0),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepOrange, width: 1.0),
                ),
                fillColor: Colors.grey,

                hintText: "Search here",

                //make hint text
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: "verdana_regular",
                  fontWeight: FontWeight.w400,
                ),

                labelStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: "verdana_regular",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "SEARCH",
                    style: TextStyle(color: Colors.deepOrange, fontSize: 12),
                  ))),
        ],
      ),
    );
  }
}
