import 'package:flutter/material.dart';

import 'package:messanger/model/chatMessageModel.dart';

class TalkMessageListPage extends StatefulWidget {
  const TalkMessageListPage({Key key, this.messageList}) : super(key: key);

  final List<ChatMessageModel> messageList;

  @override
  _TalkMessageListPageState createState() => _TalkMessageListPageState();
}

class _TalkMessageListPageState extends State<TalkMessageListPage> {
  final messageTextInputCtl = new TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("メッセージ"),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children : <Widget> [
         ListView(
          padding: const EdgeInsets.only(top: 10.0, right: 5.0, bottom: 50.0, left: 5.0),
          children: [
            for (int index = 0; index < widget.messageList.length; index++)
              Card(
                margin: widget.messageList[index].isMine 
                ? EdgeInsets.only(top: 5.0, left: 90.0, bottom: 5.0, right: 8.0)
                : EdgeInsets.only(top: 5.0, left: 8.0, bottom: 5.0, right: 90.0),
                child:ListTile(
                  title:Text(widget.messageList[index].message),
                  subtitle: Row(
                    mainAxisAlignment: widget.messageList[index].isMine 
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage:  NetworkImage(widget.messageList[index].avatarUrl),
                        radius: 10.0,
                      ),
                      Text(widget.messageList[index].name + widget.messageList[index].datetime),
                    ]
                  ),
                ),
              ),
          ],
        ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end, 
            children: <Widget>[
            new Container(
                color: Colors.green[100],
                child: Column(
                  children: <Widget>[
                    new Form(
                      key: _formKey, 
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          new Flexible(
                            child: new TextFormField(
                                    controller: messageTextInputCtl,
                                    keyboardType: TextInputType.multiline,
                                    maxLines: 5,
                                    minLines: 1,
                                    decoration: const InputDecoration(
                                      // border: const UnderlineInputBorder(),
                                      hintText: 'メッセージを入力してください',
                                    ),
                                  )),
                          Material(
                            color: Colors.green[100],
                            child: Center(
                              child: Ink(
                                decoration: const ShapeDecoration(
                                  color: Colors.green,
                                  shape: CircleBorder(),
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.send),
                                  color: Colors.white,
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          )
                        ]
                      )
                    ),
                  ]
                )
              ),
            ],
          )
        ]
      ),
    );
  }
}

