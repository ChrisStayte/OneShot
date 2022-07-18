import 'package:flutter/material.dart';
import 'package:oneshot/enums/OpticRange.dart';
import 'package:oneshot/enums/item_type.dart';
import 'package:oneshot/enums/weapons.dart';
import 'package:oneshot/models/barrelStabilizer.dart';
import 'package:oneshot/models/hopup.dart';
import 'package:oneshot/models/optic.dart';

class AttachmentsProvider extends ChangeNotifier {
  List<Optic> optics = [
    Optic(
      name: '1x HCOG "Classic"',
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
      name: '2x HCOG "Bruiser"',
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
      name: '3x HCOG "Ranger"',
      range: OpticRange.mid,
      itemType: ItemType.epic,
      compatibleWeapons: [
        Weapons.havoc,
        Weapons.flatline,
        Weapons.hemlock,
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
        Weapons.hemlock,
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
    )
  ];

  List<BarrelStabilizer> barrelStabilizers = [];

  List<HopUp> hopups = [
    HopUp(
      name: 'Boosted Loader',
      effect:
          'Boosts reload time and overloads weapon when the magazine is almost empty.',
      itemType: ItemType.legendary,
      compatibleMainWeapons: [
        Weapons.hemlock,
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
