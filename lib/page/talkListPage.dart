// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:messanger/model/chatModel.dart';

enum TalkListType {
  oneLine,
  twoLine,
}

class TalkListPage extends StatelessWidget {
  const TalkListPage({Key key, this.type}) : super(key: key);

  final TalkListType type;

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
            for (int index = 1; index < ChatModel.dummyData.length; index++)
              ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(
                    backgroundImage:  NetworkImage(ChatModel.dummyData[index].avatarUrl)),
                ),
                title: Text(
                  ChatModel.dummyData[index].name,
                ),
                subtitle: type == TalkListType.twoLine
                    ? Text(ChatModel.dummyData[index].message)
                    : null,
              ),
          ],
        ),
      ),
    );
  }
}

