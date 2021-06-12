class Depo {
  int id;
  int userId;
  String name;

  Depo({
    required this.id,
    required this.userId,
    required this.name,
  });
}

class DepoDb {
  List<Depo> getDepo() {
    return [
      Depo(id: 1, userId: 1, name: "name1"),
      Depo(id: 1, userId: 1, name: "name2"),
      Depo(id: 1, userId: 1, name: "name1"),
      Depo(id: 1, userId: 1, name: "name2"),
      Depo(id: 1, userId: 1, name: "name1"),
      Depo(id: 1, userId: 1, name: "name2"),
      Depo(id: 1, userId: 1, name: "name1"),
      Depo(id: 1, userId: 1, name: "name2"),
      Depo(id: 1, userId: 1, name: "name1"),
      Depo(id: 1, userId: 1, name: "name2"),
      Depo(id: 1, userId: 1, name: "name1"),
      Depo(id: 1, userId: 1, name: "name2"),
      Depo(id: 1, userId: 1, name: "name1"),
      Depo(id: 1, userId: 1, name: "name2"),
      Depo(id: 1, userId: 1, name: "name1"),
      Depo(id: 1, userId: 1, name: "name2"),
      Depo(id: 1, userId: 1, name: "name1"),
      Depo(id: 1, userId: 1, name: "name2"),
      Depo(id: 1, userId: 1, name: "name1"),
      Depo(id: 1, userId: 1, name: "name2"),
      Depo(id: 1, userId: 1, name: "name1"),
      Depo(id: 1, userId: 1, name: "name2"),
      Depo(id: 1, userId: 1, name: "name1"),
      Depo(id: 1, userId: 1, name: "name2"),
    ];
  }
}
