import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final v1, v2, v3, v4;
  DetailPage(this.v1, this.v2, this.v3, this.v4);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var _v1, _v2, _v3, _v4;
  @override
  void initState() {
    _v1 = widget.v1;
    _v2 = widget.v2;
    _v3 = widget.v1;
    _v4 = widget.v4;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children:  [Text(widget.v1,style: TextStyle(fontSize: 30,color: Colors.brown,fontWeight: FontWeight.bold),),
          Text(widget.v2,style: TextStyle(fontSize: 15,color: Colors.teal,fontWeight: FontWeight.bold)),
          Image.network(widget.v3),
          Text(widget.v4)
          ],
        ),
      ),
    );
  }
}
