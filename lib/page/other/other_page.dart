import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';

class Other extends StatefulWidget {
  Other({Key key}) : super(key: key);

  @override
  _OtherState createState() => _OtherState();
}

class _OtherState extends State<Other> {
  Widget _item(String name, IconData icon, vc) {
    return InkWell(
      onTap: vc,
      child: Container(
        height: 45,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(icon),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(name),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Menu"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(AntIcons.shopping_outline),
          )
        ],
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                _item("my account", AntIcons.user_add_outline, () {}),
                _item("my location", Icons.location_on, () {}),
                _item("my payment", Icons.payment, () {}),
              ],
            ),
            Container(
              height: 10,
              color: Colors.cyan[50],
            ),
            Column(
              children: [
                _item("order history", AntIcons.history, () {}),
                _item("order item history", Icons.history, () {}),
              ],
            ),
            Container(
              height: 10,
              color: Colors.cyan[50],
            ),
            Container(
              height: 45,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(AntIcons.notification),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text("Notificaton"),
                  )
                ],
              ),
            ),
            Container(
              height: 10,
              color: Colors.cyan[50],
            ),
            Column(
              children: [
                _item("Language", Icons.language, () {}),
                _item("Help", Icons.help, () {}),
                _item("About K Mart", AntIcons.info_circle, () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
