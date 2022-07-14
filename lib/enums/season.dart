enum Season {
  season1,
  season2,
  season3,
  season4,
  season5,
  season6,
  season7,
  season8,
  season9,
  season10,
  season11,
  season12,
  season13;

  int get seasonNumber => int.parse(name.replaceAll('season', ''));
}
