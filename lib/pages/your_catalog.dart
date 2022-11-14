import 'package:flutter/material.dart';

class YourCatalog extends StatefulWidget {
  const YourCatalog({Key? key}) : super(key: key);

  @override
  State<YourCatalog> createState() => _MyCatalogState();
}

class _MyCatalogState extends State<YourCatalog> {
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
            onPressed: () {},
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
            _buildSelector(Colors.cyan),
            SizedBox(height: 20),
            _buildSelector(Colors.cyanAccent),
            SizedBox(height: 20),
            _buildSelector(Colors.blue),
            SizedBox(height: 20),
            _buildSelector(Colors.blueAccent),
            SizedBox(height: 20),
            _buildSelector(Colors.indigo),
          ],
        ),
      ),
    );
  }

  Widget _buildSelector(Color mColors) {
    return Row(
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: Container(
            width: 500,
            height: 50,
            color: mColors,
          ),
        ),
        _buildSelectorButton(),
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
