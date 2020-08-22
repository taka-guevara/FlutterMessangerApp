import 'package:flutter_test/flutter_test.dart';
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

  group('dataSource test', () {
    test("dataSource has 6 data, same as initial data count", () {
      expect(testData.length, 3);
    });

    test("dataSource has 7 data count in total after adding one data", () {
      testData.add(ChatMessageModel(
        avatarUrl: "https://randomuser.me/api/portraits/men/49.jpg",
        name: "自分",
        datetime: "20:30",
        message: "赤を選ぶ",
        isMine: true,
      ));
      expect(testData.length, 5);
    });
  });
  
}