import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  Page4({Key? key, this.title = 'Flutter Demo Home Page' }) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(color: Colors.black,),

    );
  }
}
