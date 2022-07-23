import 'package:oneshot/enums/OpticRange.dart';
import 'package:oneshot/enums/item_type.dart';
import 'package:oneshot/enums/stock_type.dart';
import 'package:oneshot/enums/weapons.dart';
import 'package:oneshot/models/barrelStabilizer.dart';
import 'package:oneshot/models/hopup.dart';
import 'package:oneshot/models/optic.dart';
import 'package:oneshot/models/shotgun_bolt.dart';
import 'package:oneshot/models/stock.dart';

class AttachmentsProvider {
  List<Optic> optics = [
    Optic(
      name: '1x HCOG',
      altName: 'classic',
      range: OpticRange.close,
      itemType: ItemType.common,
      compatibleWeapons: Weapons.values,
    ),
    Optic(
      name: '1x Holo',
      itemType: ItemType.common,
      range: OpticRange.close,
      compatibleWeapons: Weapons.values,
    ),
    Optic(
      name: '2x HCOG',
      altName: 'Bruiser',
      range: OpticRange.close,
      itemType: ItemType.rare,
      compatibleWeapons: Weapons.values,
    ),
    Optic(
      name: '1x-2x Variable Holo',
      range: OpticRange.close,
      itemType: ItemType.rare,
      compatibleWeapons: Weapons.values,
    ),
    Optic(
      name: '6x Sniper',
      range: OpticRange.sniper,
      itemType: ItemType.rare,
      compatibleWeapons: [
        Weapons.chargerifle,
        Weapons.longbow,
        Weapons.kraber,
        Weapons.sentinel,
      ],
    ),
    Optic(
      name: '3x HCOG',
      altName: 'Ranger',
      range: OpticRange.mid,
      itemType: ItemType.epic,
      compatibleWeapons: [
        Weapons.havoc,
        Weapons.flatline,
        Weapons.hemlok,
        Weapons.r301,
        Weapons.chargerifle,
        Weapons.longbow,
        Weapons.kraber,
        Weapons.sentinel,
        Weapons.devotion,
        Weapons.lstar,
        Weapons.spitfire,
        Weapons.rampage,
        Weapons.g7scout,
        Weapons.tripletake,
        Weapons.thirtythirty,
        Weapons.bocek,
      ],
    ),
    Optic(
      name: '2x-4x Variable AOG',
      range: OpticRange.mid,
      itemType: ItemType.epic,
      compatibleWeapons: [
        Weapons.havoc,
        Weapons.flatline,
        Weapons.hemlok,
        Weapons.r301,
        Weapons.chargerifle,
        Weapons.longbow,
        Weapons.kraber,
        Weapons.sentinel,
        Weapons.devotion,
        Weapons.lstar,
        Weapons.spitfire,
        Weapons.rampage,
        Weapons.g7scout,
        Weapons.tripletake,
        Weapons.thirtythirty,
      ],
    ),
    Optic(
      name: '4x-8x Variable Sniper',
      range: OpticRange.sniper,
      itemType: ItemType.epic,
      compatibleWeapons: [
        Weapons.kraber,
        Weapons.sentinel,
        Weapons.longbow,
        Weapons.chargerifle,
      ],
    ),
    Optic(
      name: '1x Digital Threat',
      range: OpticRange.close,
      itemType: ItemType.legendary,
      compatibleWeapons: [
        Weapons.re45,
        Weapons.p2020,
        Weapons.wingman,
        Weapons.eva8,
        Weapons.mastiff,
        Weapons.mozambique,
        Weapons.peacekeeper,
        Weapons.alternator,
        Weapons.prowler,
        Weapons.r99,
        Weapons.volt,
        Weapons.car,
      ],
    ),
    Optic(
      name: '4x-10x Digital Sniper Threat',
      range: OpticRange.sniper,
      itemType: ItemType.legendary,
      compatibleWeapons: [
        Weapons.chargerifle,
        Weapons.sentinel,
        Weapons.longbow,
        Weapons.kraber,
      ],
    )
  ];

  List<Stock> stocks = [
    Stock(
      itemType: ItemType.common,
      stockType: StockType.standard,
      compatibleWeapons: [
        Weapons.alternator,
        Weapons.prowler,
        Weapons.r99,
        Weapons.volt,
        Weapons.car,
        Weapons.devotion,
        Weapons.lstar,
        Weapons.spitfire,
        Weapons.rampage,
        Weapons.havoc,
        Weapons.flatline,
        Weapons.hemlok,
        Weapons.r301,
      ],
      percentLessAdsTime: 15,
      percentLessRaiseLowerTime: 10,
      percentLessAimDrift: 15,
      percentLessDeployHolsterTime: 15,
      percentLessReloadTimeMobile: 3.3,
    ),
    Stock(
      itemType: ItemType.rare,
      stockType: StockType.standard,
      compatibleWeapons: [
        Weapons.alternator,
        Weapons.prowler,
        Weapons.r99,
        Weapons.volt,
        Weapons.car,
        Weapons.devotion,
        Weapons.lstar,
        Weapons.spitfire,
        Weapons.rampage,
        Weapons.havoc,
        Weapons.flatline,
        Weapons.hemlok,
        Weapons.r301,
      ],
      percentLessAdsTime: 20,
      percentLessRaiseLowerTime: 15,
      percentLessAimDrift: 25,
      percentLessDeployHolsterTime: 20,
      percentLessReloadTimeMobile: 6.7,
    ),
    Stock(
      itemType: ItemType.epic,
      stockType: StockType.standard,
      compatibleWeapons: [
        Weapons.alternator,
        Weapons.prowler,
        Weapons.r99,
        Weapons.volt,
        Weapons.car,
        Weapons.devotion,
        Weapons.lstar,
        Weapons.spitfire,
        Weapons.rampage,
        Weapons.havoc,
        Weapons.flatline,
        Weapons.hemlok,
        Weapons.r301,
      ],
      percentLessAdsTime: 25,
      percentLessRaiseLowerTime: 20,
      percentLessAimDrift: 45,
      percentLessDeployHolsterTime: 25,
      percentLessReloadTimeMobile: 10,
    ),
    Stock(
      itemType: ItemType.common,
      stockType: StockType.sniper,
      compatibleWeapons: [
        Weapons.chargerifle,
        Weapons.longbow,
        Weapons.kraber,
        Weapons.sentinel,
        Weapons.g7scout,
        Weapons.tripletake,
        Weapons.thirtythirty,
      ],
      percentLessAdsTime: 10,
      percentLessDeployHolsterTime: 15,
      percentLessRaiseLowerTime: 10,
      percentLessAimDrift: 30,
      percentSlowerDriftSpeedSniper: 10,
      percentLessReloadTimeMobile: 3.3,
      percentLessReloadTimeMobileOutliers: {
        Weapons.thirtythirty: 5,
      },
    ),
    Stock(
      itemType: ItemType.rare,
      stockType: StockType.sniper,
      compatibleWeapons: [
        Weapons.chargerifle,
        Weapons.longbow,
        Weapons.kraber,
        Weapons.sentinel,
        Weapons.g7scout,
        Weapons.tripletake,
        Weapons.thirtythirty,
      ],
      percentLessAdsTime: 15,
      percentLessDeployHolsterTime: 20,
      percentLessRaiseLowerTime: 15,
      percentLessAimDrift: 50,
      percentSlowerDriftSpeedSniper: 15,
      percentLessReloadTimeMobile: 6.7,
      percentLessReloadTimeMobileOutliers: {
        Weapons.thirtythirty: 12.5,
      },
    ),
    Stock(
      itemType: ItemType.epic,
      stockType: StockType.sniper,
      compatibleWeapons: [
        Weapons.chargerifle,
        Weapons.longbow,
        Weapons.kraber,
        Weapons.sentinel,
        Weapons.g7scout,
        Weapons.tripletake,
        Weapons.thirtythirty,
      ],
      percentLessAdsTime: 20,
      percentLessDeployHolsterTime: 25,
      percentLessRaiseLowerTime: 20,
      percentLessAimDrift: 80,
      percentSlowerDriftSpeedSniper: 20,
      percentLessReloadTimeMobile: 10,
      percentLessReloadTimeMobileOutliers: {
        Weapons.thirtythirty: 20,
      },
    ),
  ];

  List<BarrelStabilizer> barrelStabilizers = [
    BarrelStabilizer(
      itemType: ItemType.common,
      compatibleWeapons: [
        Weapons.hemlok,
        Weapons.r301,
        Weapons.alternator,
        Weapons.car,
        Weapons.r99,
        Weapons.devotion,
        Weapons.lstar,
        Weapons.rampage,
        Weapons.longbow,
        Weapons.re45,
      ],
      percentRecoil: 5,
      percentPitchRandomness: 20,
      percentYawRandomness: 10,
      percentLessRecoilOutliers: {
        Weapons.lstar: 3,
      },
      percentLessPitchRandomnessOutliers: {
        Weapons.lstar: 5,
      },
      percentLessYawRandomnessOutliers: {
        Weapons.lstar: 5,
      },
    ),
    BarrelStabilizer(
      itemType: ItemType.rare,
      compatibleWeapons: [
        Weapons.hemlok,
        Weapons.r301,
        Weapons.alternator,
        Weapons.car,
        Weapons.r99,
        Weapons.devotion,
        Weapons.lstar,
        Weapons.rampage,
        Weapons.longbow,
        Weapons.re45,
      ],
      percentRecoil: 10,
      percentPitchRandomness: 25,
      percentYawRandomness: 15,
      percentLessRecoilOutliers: {
        Weapons.lstar: 6,
      },
      percentLessPitchRandomnessOutliers: {
        Weapons.lstar: 7,
      },
      percentLessYawRandomnessOutliers: {
        Weapons.lstar: 7,
      },
    ),
    BarrelStabilizer(
      itemType: ItemType.epic,
      compatibleWeapons: [
        Weapons.hemlok,
        Weapons.r301,
        Weapons.alternator,
        Weapons.car,
        Weapons.r99,
        Weapons.devotion,
        Weapons.lstar,
        Weapons.rampage,
        Weapons.longbow,
        Weapons.re45,
      ],
      percentRecoil: 15,
      percentPitchRandomness: 30,
      percentYawRandomness: 20,
      percentLessRecoilOutliers: {
        Weapons.lstar: 10,
      },
      percentLessPitchRandomnessOutliers: {
        Weapons.lstar: 10,
      },
      percentLessYawRandomnessOutliers: {
        Weapons.lstar: 10,
      },
    ),
    BarrelStabilizer(
      itemType: ItemType.legendary,
      compatibleWeapons: [
        Weapons.hemlok,
        Weapons.r301,
        Weapons.alternator,
        Weapons.car,
        Weapons.r99,
        Weapons.devotion,
        Weapons.lstar,
        Weapons.rampage,
        Weapons.longbow,
        Weapons.re45,
      ],
      vaultedInMain: true,
      flashHider: true,
    ),
  ];

  List<ShotgunBolt> shotgunBolts = [
    ShotgunBolt(
      itemType: ItemType.common,
      higherFireRage: {
        Weapons.eva8: 10,
        Weapons.mastiff: 10,
        Weapons.mozambique: 15,
        Weapons.peacekeeper: 15
      },
      lessRechamberTimer: {
        Weapons.peacekeeper: 7.5,
      },
    ),
    ShotgunBolt(
      itemType: ItemType.rare,
      higherFireRage: {
        Weapons.eva8: 15,
        Weapons.mastiff: 15,
        Weapons.mozambique: 25,
        Weapons.peacekeeper: 25
      },
      lessRechamberTimer: {
        Weapons.peacekeeper: 13,
      },
    ),
    ShotgunBolt(
      itemType: ItemType.epic,
      higherFireRage: {
        Weapons.eva8: 20,
        Weapons.mastiff: 20,
        Weapons.mozambique: 35,
        Weapons.peacekeeper: 35
      },
      lessRechamberTimer: {
        Weapons.peacekeeper: 16,
      },
    ),
  ];

  List<HopUp> hopups = [
    HopUp(
      name: 'Boosted Loader',
      effect:
          'Boosts reload time and overloads weapon when the magazine is almost empty.',
      itemType: ItemType.legendary,
      compatibleMainWeapons: [
        Weapons.hemlok,
        Weapons.wingman,
      ],
    ),
    HopUp(
        name: 'Turbocharger',
        effect: 'Removes or reduces weapon charge-up times.	',
        itemType: ItemType.legendary,
        compatibleMainWeapons: [
          Weapons.devotion,
          Weapons.havoc,
        ],
        compatibleMobileWeapons: [
          Weapons.havoc,
        ]),
    HopUp(
      name: 'Deadeye\'s Tempo',
      effect: 'Speeds up fire rate while continuously firing',
      itemType: ItemType.epic,
      compatibleMainWeapons: [
        Weapons.bocek,
        Weapons.sentinel,
      ],
    ),
    HopUp(
        name: 'Hammerpoint Rounds',
        effect: 'increases unshielded damage',
        itemType: ItemType.epic,
        compatibleMainWeapons: [
          Weapons.mozambique,
          Weapons.p2020,
          Weapons.re45,
        ],
        compatibleMobileWeapons: [
          Weapons.mozambique,
          Weapons.p2020,
        ]),
    HopUp(
      name: 'Kinetic Feeder',
      effect: 'Faster choke and automatic gradual reload while sliding',
      itemType: ItemType.epic,
      compatibleMainWeapons: [
        Weapons.peacekeeper,
        Weapons.tripletake,
      ],
    ),
    HopUp(
      name: 'Shatter Caps',
      effect: 'Allows weapon to fire multiple rounds at once when hipfiring',
      itemType: ItemType.epic,
      compatibleMainWeapons: [
        Weapons.bocek,
        Weapons.thirtythirty,
      ],
    ),
    HopUp(
      name: 'Skullpiercer Rifling',
      effect: 'Increases headshot damage.',
      itemType: ItemType.legendary,
      compatibleMobileWeapons: [
        Weapons.longbow,
        Weapons.wingman,
      ],
      vaultedInMain: true,
      compatibleMainWeapons: [
        Weapons.longbow,
        Weapons.wingman,
      ],
    ),
    HopUp(
      name: 'Double Tap Trigger',
      effect:
          'Unlocks alternate firemode that fires two shots per trigger pull',
      itemType: ItemType.epic,
      compatibleMainWeapons: [
        Weapons.eva8,
        Weapons.g7scout,
      ],
      compatibleMobileWeapons: [
        Weapons.g7scout,
      ],
      vaultedInMain: true,
    ),
    HopUp(
      name: 'Selectfire Receiver',
      effect: 'Unlocks an additional fire mode',
      itemType: ItemType.epic,
      compatibleMobileWeapons: [
        Weapons.prowler,
      ],
      compatibleMainWeapons: [
        Weapons.havoc,
        Weapons.prowler,
      ],
      vaultedInMain: true,
    ),
    HopUp(
      name: 'Disruptor Rounds',
      effect: 'Increases shielded damage',
      itemType: ItemType.epic,
      compatibleMainWeapons: [
        Weapons.alternator,
        Weapons.re45,
      ],
      vaultedInMain: true,
    ),
    HopUp(
      name: 'Dual Shell',
      effect: 'Reloads 2 rounds at a time',
      itemType: ItemType.epic,
      compatibleMainWeapons: [
        Weapons.mastiff,
        Weapons.thirtythirty,
      ],
      vaultedInMain: true,
    ),
    HopUp(
      name: 'Precision Choke',
      effect: 'Reduces weapon spread.',
      itemType: ItemType.epic,
      compatibleMainWeapons: [
        Weapons.peacekeeper,
        Weapons.tripletake,
      ],
      vaultedInMain: true,
    ),
    HopUp(
      name: 'Quickdraw Holster',
      effect: 'Reduces weapon\'s swap time, ADS time, and hipfire spread.',
      itemType: ItemType.epic,
      compatibleMainWeapons: [Weapons.wingman, Weapons.re45],
      vaultedInMain: true,
    ),
    HopUp(
      name: 'Anvil Receiver',
      effect:
          'Increased semi auto firemode damage at the cost of 2 ammo for each shot and reduced fire rate.',
      itemType: ItemType.legendary,
      vaultedInMain: true,
      compatibleMainWeapons: [
        Weapons.r301,
        Weapons.flatline,
      ],
    ),
  ];
}
