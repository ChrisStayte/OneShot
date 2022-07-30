import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'platform.g.dart';

@HiveType(typeId: 2)
enum Platform {
  @HiveField(0)
  origin('PC', Color(0xffED5822)),

  @HiveField(1)
  playstation('PS4', Color(0xff012F83)),

  @HiveField(2)
  xbox('X1', Color(0xff117810));

  const Platform(this.apiString, this.platformColor);
  final String apiString;
  final Color platformColor;
}
