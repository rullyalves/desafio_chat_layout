import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF22222A),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
        title: Text(
          "Rully Alves",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  buildMessageItem(
                    direction: false,
                    color: Color(0xFF2C2C36),
                    borders: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(25),
                    ),
                    text: "Hey Bwolf , you are gay",
                  ),
                  buildMessageItem(
                    color: Color(0xFFEF495F),
                  ),
                  buildMessageItem(
                    direction: false,
                    color: Color(0xFF2C2C36),
                    borders: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(25),
                    ),
                    text: "Hey Bwolf , you are gay",
                  ),
                  buildMessageItem(
                    color: Color(0xFFEF495F),
                  ),
                  buildMessageItem(
                    color: Color(0xFFEF495F),
                  ),
                  buildMessageItem(
                    direction: false,
                    color: Color(0xFF2C2C36),
                    borders: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(25),
                    ),
                    text: "Hey Bwolf , you are gay",
                  ),
                  buildMessageItem(
                    direction: false,
                    color: Color(0xFF2C2C36),
                    borders: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(25),
                    ),
                    text: "Hey Bwolf , you are gay",
                  ),
                  buildMessageItem(
                    direction: false,
                    color: Color(0xFF2C2C36),
                    borders: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(25),
                    ),
                    text: "Hey Bwolf , you are gay",
                  ),
                  buildMessageItem(
                    color: Color(0xFFEF495F),
                  ),
                  buildMessageItem(
                    color: Color(0xFFEF495F),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Divider(
                color: Colors.white,
                height: 0.32,
              ),
              Container(
                color: Color(0xFF22222A),
                height: 80,
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                        maxLines: null,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration.collapsed(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: "Type your message",
                        ),
                      ),
                    ),
                    Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.image,
                            size: 25,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.favorite_border,
                            size: 25,
                            color: Colors.white,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFEF495F),
                                borderRadius: BorderRadius.circular(30)),
                            width: 50,
                            height: 30,
                            child: Icon(Icons.add, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildMessageItem(
      {BorderRadius borders,
      Color color,
      String text,
      bool direction = true,
      double width}) {
    List<Widget> items1 = <Widget>[
      CircleAvatar(
        radius: 23,
        backgroundColor: Colors.brown,
      ),
      Flexible(
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          padding:
              const EdgeInsets.only(top: 14, left: 14, right: 14, bottom: 5),
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            color: color ?? Colors.white,
            borderRadius: borders ??
                BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(25),
                ),
          ),
          child: Text(
            text ??
                "Bwolf , Dartagnhan Jacob and Davis are a gays,"
                " the bloc puro is coming soon",
            softWrap: true,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    ];

    List<Widget> items2 = <Widget>[
      Container(
        height: 60,
        padding: const EdgeInsets.only(top: 14, left: 14, right: 14),
        margin: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: borders ??
              BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(25),
              ),
        ),
        child: Text(
          text ??
              "Bwolf , Dartagnhan Jacob and Davis are a gays,"
              " the bloc puro is coming soon",
          softWrap: true,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    ];

    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
      child: Row(
        mainAxisAlignment:
            direction ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: direction ? items1 : items2,
      ),
    );
  }
}
