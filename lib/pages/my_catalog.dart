import 'package:flutter/material.dart';
import 'package:flutter_mycart/pages/my_cart.dart';

class MyCatalog extends StatefulWidget {
  const MyCatalog({Key? key}) : super(key: key);

  @override
  State<MyCatalog> createState() => _MyCatalogState();
}

class _MyCatalogState extends State<MyCatalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyCart()));
            },
            icon: Icon(Icons.shopping_cart),
          ),
          SizedBox(width: 16),
        ],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    width: 500,
                    height: 50,
                    color: Colors.cyan,
                  ),
                ),
                _buildSelector(0),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    width: 500,
                    height: 50,
                    color: Colors.cyanAccent,
                  ),
                ),
                _buildSelector(1),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    width: 500,
                    height: 50,
                    color: Colors.blue,
                  ),
                ),
                _buildSelector(2),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    width: 500,
                    height: 50,
                    color: Colors.blueAccent,
                  ),
                ),
                _buildSelector(3),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    width: 500,
                    height: 50,
                    color: Colors.indigo,
                  ),
                ),
                _buildSelector(4),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSelector(int id) {
    return Column(
      children: [
        Container(
          child: _buildSelectorButton(),
        ),
      ],
    );
  }

  Widget _buildSelectorButton() {
    return Container(
      child: TextButton(
        onPressed: () {
          setState(() {
            Icon(Icons.check_box);
          });
        },
        child: Text("ADD"),
      ),
    );
  }
}
