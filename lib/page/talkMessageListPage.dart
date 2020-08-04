// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:messanger/model/chatMessageModel.dart';

class TalkMessageListPage extends StatefulWidget {
  const TalkMessageListPage({Key key, this.messageList}) : super(key: key);

  final List<ChatMessageModel> messageList;

  @override
  _TalkMessageListPageState createState() => _TalkMessageListPageState();
}

class _TalkMessageListPageState extends State<TalkMessageListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("メッセージ"),
      ),
      body: Scrollbar(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
            for (int index = 0; index < widget.messageList.length; index++)
              Card(
                child:ListTile(
                  leading: ExcludeSemantics(
                    child: CircleAvatar(
                      backgroundImage:  NetworkImage(widget.messageList[index].avatarUrl)),
                  ),
                  title: Text(
                    widget.messageList[index].name,
                  ),
                  subtitle: Text(
                        widget.messageList[index].message,
                        maxLines: 2,
                      ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

