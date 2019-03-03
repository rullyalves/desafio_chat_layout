import 'package:flutter/material.dart';
import 'package:flutter_desafio_login/MessagesPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MessagesPage(),
    );
  }
}


/*


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Color(0xFF22222A),
          ),
          Positioned(
            top: -35,
            right: -75,
            child: buildBody(),
          ),
          Positioned(
            top: 40,
            left: -20,
            child: buildBody(
              color: Colors.blueGrey,
              height: 70,
              width: 70,
              borderRadius: BorderRadius.circular(200),
            ),
          ),
          Positioned(
            top: 250,
            left: 100,
            child: Container(
              child: Column(
                children: <Widget>[
                  Text(
                    "Meet in Bar",
                    style: const TextStyle(color: Colors.white, fontSize: 42),
                  ),
                  Text(
                    "by James Dean",
                    style: TextStyle(color: Colors.grey[800], fontSize: 17),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 55,
            left: 25,
            right: 25,
            child: buildContent(),
          ),
        ],
      ),
    );
  }

  Widget buildBody(
      {double width, double height, Color color, BorderRadius borderRadius}) {
    return Container(
      decoration: BoxDecoration(
          color: color ?? Color(0xFFEF495F),
          borderRadius: borderRadius ?? BorderRadius.circular(200)),
      width: width ?? 250,
      height: height ?? 250,
    );
  }

  Widget buildContent() {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 70, left: 15, right: 15),
      color: Colors.transparent,
      child: ListView(
        children: <Widget>[
          buildInputs(),
          buildButton(),
        ],
      ),
    );
  }

  Widget buildInputs() {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "aaaaaaaaa",
                  style: TextStyle(color: Colors.grey[800], fontSize: 17),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "rullyalvesz@gmail.com",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 17)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "aaaaaaaaa",
                  style: TextStyle(color: Colors.grey[800], fontSize: 17),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "* * * * * *",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 17)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 50,
      width: MediaQuery.of(context).size.width / 1.2,
      child: RaisedButton(
        color: Colors.deepOrange[800],
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}


*/