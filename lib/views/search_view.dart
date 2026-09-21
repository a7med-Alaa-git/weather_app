import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a City', style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(height: 120),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(40),
                prefixIcon: Icon(Icons.search),
                labelText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                floatingLabelStyle: TextStyle(color: Colors.black),
              ),
              onFieldSubmitted: (value) {},
              keyboardType: TextInputType.text,
            ),
          ),
        ],
      ),
    );
  }
}
