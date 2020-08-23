import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messanger/page/talkMessageListPage.dart';
import 'package:messanger/model/chatMessageModel.dart';

void main() {
  List<ChatMessageModel> testData;
  setUp(() {
    testData = [
    ChatMessageModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/83.jpg",
      name: "モーフィアス",
      datetime: "20:18",
      message: "これが最後のチャンスだ。後戻りはできない",
      isMine: false,
    ),
    ChatMessageModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/49.jpg",
      name: "自分",
      datetime: "20:30",
      message: "どういうことだ？",
      isMine: true,
    ),
    ChatMessageModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/83.jpg",
      name: "モーフィアス",
      datetime: "20:34",
      message: "青い錠剤を飲めば、この話はなかったことになりベッドで目覚め元の日常に戻る。赤い錠剤を飲めば、この不思議な世界の真実へ連れて行こう",
      isMine: false,
    ),
    ];
  });
  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    await tester.pumpWidget(TalkMessageListPage(messageList: testData));

    expect(find.text('自分'), findsNWidgets(1));
    expect(find.text('モーフィアス'), findsNWidgets(2));

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
  });
}