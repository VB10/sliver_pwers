class UserModel {
  final String name;
  final String image;
  final int money;

  UserModel(this.name, this.image, this.money);
}

class UserModelList {
  late final List<UserModel> items;

  UserModelList.init() {
    items = [
      UserModel('vb', 'https://picsum.photos/200', 10),
      UserModel('vb', 'https://picsum.photos/200', 10),
      UserModel('vb', 'https://picsum.photos/200', 10),
      UserModel('vb', 'https://picsum.photos/200', 10),
      UserModel('vb', 'https://picsum.photos/200', 10),
      UserModel('vb', 'https://picsum.photos/200', 10),
      UserModel('vb', 'https://picsum.photos/200', 10),
      UserModel('vb', 'https://picsum.photos/200', 10),
      UserModel('vb', 'https://picsum.photos/200', 10),
    ];
  }
}
