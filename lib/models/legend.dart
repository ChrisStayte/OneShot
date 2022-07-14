import 'package:oneshot/enums/ability_type.dart';
import 'package:oneshot/enums/gender.dart';
import 'package:oneshot/enums/legend_type.dart';
import 'package:oneshot/models/ability.dart';

class Legend {
  String name;
  String tagline;
  String fullName;
  Gender gender;
  String homeworld;
  LegendType legendType;
  String voiceActor;
  String? voiceActorLink;
  Map<AbilityType, Ability> abilities;
  bool inMainGame;
  bool inMobileGame;

  Legend({
    required this.name,
    required this.fullName,
    required this.gender,
    required this.homeworld,
    required this.legendType,
    required this.voiceActor,
    required this.abilities,
    required this.inMainGame,
    required this.inMobileGame,
    this.voiceActorLink,
    required this.tagline,
  });
}
