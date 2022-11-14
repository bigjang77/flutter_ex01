import 'package:flutter/material.dart';
import 'package:flutter_mycart/component/custom_form.dart';

class MyLoginScreen extends StatelessWidget {
  const MyLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Welcome"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: 15),
            CustomForm(),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {},
              child: Text("ENTER"),
              style: ElevatedButton.styleFrom(
                maximumSize: Size(100, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
