class Measure {
  int id;
  int userId;
  String name;

  Measure({
    required this.id,
    required this.userId,
    required this.name,
  });
}

class MeasureDb {
  List<Measure> getMeasure() {
    return [
      Measure(id: 1, userId: 1, name: "name1"),
      Measure(id: 1, userId: 1, name: "name2"),
      Measure(id: 1, userId: 1, name: "name3"),
      Measure(id: 1, userId: 1, name: "name4"),
      Measure(id: 1, userId: 1, name: "name5"),
      Measure(id: 1, userId: 1, name: "name6"),
      Measure(id: 1, userId: 1, name: "name7"),
      Measure(id: 1, userId: 1, name: "name8"),
      Measure(id: 1, userId: 1, name: "name9"),
      Measure(id: 1, userId: 1, name: "name0"),
      Measure(id: 1, userId: 1, name: "name12"),
      Measure(id: 1, userId: 1, name: "name13"),
      Measure(id: 1, userId: 1, name: "name15"),
      Measure(id: 1, userId: 1, name: "name16"),
    ];
  }
}
