import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home Page"),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 40, right: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Cash Withdrawl",
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Balance Enquiry",
                      style: TextStyle(fontSize: 24, color: Colors.black)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Transfer",
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Account Setting",
                      style: TextStyle(fontSize: 24, color: Colors.black)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Others",
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Exit",
                      style: TextStyle(fontSize: 24, color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
