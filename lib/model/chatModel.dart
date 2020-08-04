class ChatModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;

  ChatModel({this.avatarUrl, this.name, this.datetime, this.message});

  static final List<ChatModel> dummyData = [
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/34.jpg",
      name: "加茂倫明",
      datetime: "20:18",
      message: "How about meeting tomorrow?",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
      name: "トリニティ",
      datetime: "19:22",
      message: "あなたは死なない。なぜなら、私はあなたを愛しているから。聞こえてる？愛してるわ",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
      name: "予言者",
      datetime: "14:34",
      message: "それよりも後であなたを考え込ませるのは、私が何も言わなかったら、花瓶を壊さなかったかってこと",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      name: "ネオ",
      datetime: "11:05",
      message: "この世界の人々に、君たちが見せたくないものを見せる。君たちの存在しない世界だ。ルールも支配も、境界線もない",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/83.jpg",
      name: "モーフィアス",
      datetime: "09:46",
      message: "忘れるな・・・。私が見せるのは真実だ。純粋な真実だ",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/85.jpg",
      name: "エージェント・スミス",
      datetime: "08:15",
      message: "最初のマトリックスは完璧な人間世界として作られたと知っているか？そこでは苦しむものはなく、誰もが幸せだった。だが、それは悲劇を招いた。だれもこの世界を受け入れなかった。収穫高はゼロだった",
    ),
  ];
}