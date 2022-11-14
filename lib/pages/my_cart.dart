import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Cart"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      width: 300,
                      height: 50,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Text(
                    "\$42",
                    style: TextStyle(fontSize: 42),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                "Buy",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.blueAccent,
                  ),
                  minimumSize: Size(400, 50)),
            ),
          ],
        ),
      ),
    );
  }
}
