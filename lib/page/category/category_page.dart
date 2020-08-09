import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  Widget mycategory(String name) {
    return Card(
      elevation: 0.2,
        child: Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(name),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(AntIcons.loading_outline_quarters),
          )
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text("Category"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(AntIcons.shopping_outline),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            mycategory("အသားငါး"),
            mycategory("အသားငါး"),
            mycategory("အသားငါး"),
            mycategory("အသားငါး"),
            mycategory("အသားငါး"),
            mycategory("အသားငါး"),
            mycategory("အသားငါး"),
            mycategory("အသားငါး"),
            mycategory("အသားငါး"),
            mycategory("အသားငါး"),
            mycategory("အသားငါး"),
            mycategory("အသားငါး"),
            mycategory("အသားငါး"),
            mycategory("အသားငါး"),
            mycategory("အသားငါး"),
            mycategory("အသားငါး"),
            mycategory("အသားငါး"),
          ],
        ),
      ),
    );
  }
}
