import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desafio_login/ChatPage.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF22222A),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Messages",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 12,
        padding: const EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () => Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => ChatPage(),
                  ),
                ),
            contentPadding: const EdgeInsets.only(top: 15, bottom: 15),
            leading: CustomCircle(),
            title: Text(
              "Bwolf viadao",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "List messages now",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              "22:39",
              style: TextStyle(color: Colors.grey),
            ),
          );
        },
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF22222A),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 26,
                color: Colors.white,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                size: 26,
                color: Colors.white,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Stack(
                overflow: Overflow.visible,
                alignment: Alignment.center,
                children: <Widget>[
                  Icon(
                    Icons.chat_bubble_outline,
                    size: 26,
                    color: Colors.white,
                  ),
                  Positioned(
                    top: -5,
                    right: -12,
                    child:
                        Icon(Icons.notifications, color: Colors.red, size: 18),
                  ),
                ],
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                size: 26,
                color: Colors.white,
              ),
              title: Text(""),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCircle extends StatefulWidget {
  @override
  _CustomCircleState createState() => _CustomCircleState();
}

class _CustomCircleState extends State<CustomCircle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.center,
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: CircleAvatar(
                radius: 32,
                backgroundImage: NetworkImage(
                    "https://i2.wp.com/cloud.estacaonerd.com/wp-content/uploads/2018/09/15110959/Batman-lista.jpg?fit=1280%2C720&ssl=1"),
              )),
          Positioned(
            left: 58,
            child: CircleAvatar(
              backgroundColor: Colors.teal[300],
              radius: 6,
            ),
          ),
        ],
      ),
    );
  }
}
