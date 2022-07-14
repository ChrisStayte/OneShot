class Ability {
  String name;
  String description;
  int coolDownInSeconds;
  List<String> info;
  List<String> interactions;
  List<String> tips;
  List<String> bugs;

  Ability({
    required this.name,
    required this.description,
    this.coolDownInSeconds = 0,
    this.info = const [],
    this.interactions = const [],
    this.tips = const [],
    this.bugs = const [],
  });
}
