import 'package:flutter/material.dart';

import 'package:messanger/page/talkMessageListPage.dart';

import 'package:messanger/model/chatModel.dart';
import 'package:messanger/model/chatMessageModel.dart';

enum TalkListType {
  oneLine,
  twoLine,
}

class TalkListPage extends StatefulWidget {
  const TalkListPage({Key key, this.type,  this.chatList}) : super(key: key);

  final TalkListType type;
  final List<ChatModel> chatList;

  @override
  _TalkListPageState createState() => _TalkListPageState();
}

class _TalkListPageState extends State<TalkListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("トークリスト"),
      ),
      body: Scrollbar(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
            for (int index = 0; index < widget.chatList.length; index++)
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(
                    backgroundImage:  NetworkImage(widget.chatList[index].avatarUrl)),
                ),
                title: Text(
                  widget.chatList[index].name,
                ),
                subtitle: widget.type == TalkListType.twoLine
                    ? Text(
                      widget.chatList[index].message,
                      maxLines: 2,
                    )
                    : null,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return TalkMessageListPage(messageList: ChatMessageModel.dummyData);
                      },
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}

