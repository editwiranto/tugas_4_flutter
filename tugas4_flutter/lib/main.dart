import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Center(child: Text("Tugas 4 Flutter")),
          actions: <Widget>[Icon(Icons.search)],
        ),
        body: Container(
            color: Colors.blue[700],
            child: Column(children: <Widget>[
              Row(children: <Widget>[
                Expanded(
                    child: Image.network(
                        "https://images.pexels.com/photos/2919720/pexels-photo-2919720.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"))
              ]),
              Padding(padding: EdgeInsets.all(5.0)),
              Row(children: <Widget>[
                Padding(padding: EdgeInsets.all(5.0)),
                Expanded(
                  child: Gambar1(),
                ),
                Padding(padding: EdgeInsets.all(5.0)),
                Expanded(child: Gambar2()),
                Padding(padding: EdgeInsets.all(5.0)),
              ]),
              Padding(padding: EdgeInsets.all(10.0)),
              Text("View Image Mountain",
                  style: TextStyle(fontSize: 40.0, color: Colors.red[700])),
            ])));
  }
}

class Gambar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(10.0)),
          Image.network(
              "https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
          Padding(padding: EdgeInsets.all(11.0)),
          Text("Gambar 1", style: TextStyle(fontSize: 30.0))
        ]));
  }
}

class Gambar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(9.0)),
          Image.network(
              "https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
          Padding(padding: EdgeInsets.all(8.0)),
          Text("Gambar 2",
              style: TextStyle(fontSize: 30.0, color: Colors.red[700]))
        ]));
  }
}
