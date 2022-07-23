import 'package:flutter/material.dart';
import 'package:oneshot/enums/ammo_type.dart';
import 'package:oneshot/enums/fire_modes.dart';
import 'package:oneshot/enums/item_type.dart';
import 'package:oneshot/enums/opticrange.dart';
import 'package:oneshot/enums/weapon_type.dart';
import 'package:oneshot/enums/weapons.dart';
import 'package:oneshot/models/hopup.dart';
import 'package:oneshot/models/weapon.dart';

class WeaponsProvider {
  Map<Weapons, Weapon> weapons = {
    Weapons.alternator: Weapon(
      name: 'R-99',
      ammoTypes: [AmmoType.light],
      firemode: [
        FireModes.automatic,
      ],
      bodyDamage: 16,
      damagePerSecond: {
        FireModes.automatic: 160,
      },
      rateOfFire: {
        FireModes.automatic: 600,
      },
      headDamage: 24,
      legDamage: 13,
      weaponType: WeaponType.smg,
      magazineSizes: {
        ItemType.nothing: 19,
        ItemType.common: 22,
        ItemType.rare: 25,
        ItemType.epic: 27,
        ItemType.legendary: 27
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 1.9,
        ItemType.common: 1.84,
        ItemType.rare: 1.77,
        ItemType.epic: 1.71,
        ItemType.legendary: 1.71
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 2.23,
        ItemType.common: 2.16,
        ItemType.rare: 2.08,
        ItemType.epic: 2.01,
        ItemType.legendary: 2.01,
      },
    ),
    Weapons.prowler: Weapon(
      name: 'Prolwer Burst PDW',
      ammoTypes: [AmmoType.heavy],
      weaponType: WeaponType.smg,
      firemode: [
        FireModes.burst,
      ],
      bodyDamage: 14,
      headDamage: 21,
      legDamage: 11,
      damagePerSecond: {
        FireModes.burst: 167,
      },
      rateOfFire: {
        FireModes.burst: 666,
      },
      magazineSizes: {
        ItemType.nothing: 20,
        ItemType.common: 25,
        ItemType.rare: 30,
        ItemType.epic: 35,
        ItemType.legendary: 35,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 2,
        ItemType.common: 1.93,
        ItemType.rare: 1.87,
        ItemType.epic: 1.8,
        ItemType.legendary: 1.8,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 2.6,
        ItemType.common: 2.51,
        ItemType.rare: 2.43,
        ItemType.epic: 2.34,
        ItemType.legendary: 2.34,
      },
    ),
    Weapons.alternator: Weapon(
      name: 'Alternator',
      ammoTypes: [AmmoType.light],
      weaponType: WeaponType.smg,
      firemode: [
        FireModes.automatic,
      ],
      bodyDamage: 16,
      headDamage: 24,
      legDamage: 13,
      damagePerSecond: {
        FireModes.automatic: 160,
      },
      rateOfFire: {
        FireModes.automatic: 600,
      },
      magazineSizes: {
        ItemType.nothing: 19,
        ItemType.common: 22,
        ItemType.rare: 25,
        ItemType.epic: 27,
        ItemType.legendary: 27,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 1.9,
        ItemType.common: 1.84,
        ItemType.rare: 1.77,
        ItemType.epic: 1.71,
        ItemType.legendary: 1.71,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 2.23,
        ItemType.common: 2.16,
        ItemType.rare: 2.08,
        ItemType.epic: 2.01,
        ItemType.legendary: 2.01,
      },
    ),
    Weapons.volt: Weapon(
      name: 'Volt',
      isMythic: true,
      ammoTypes: [AmmoType.energy],
      weaponType: WeaponType.smg,
      firemode: [
        FireModes.automatic,
      ],
      bodyDamage: 17,
      headDamage: 26,
      legDamage: 14,
      damagePerSecond: {
        FireModes.automatic: 204,
      },
      rateOfFire: {
        FireModes.automatic: 720,
      },
      magazineSizes: {
        ItemType.mythic: 27,
      },
      tacReloadTimesInSeconds: {
        ItemType.mythic: 1.44,
      },
      fullReloadTimesInSeconds: {
        ItemType.mythic: 2.03,
      },
    ),
    Weapons.car: Weapon(
      name: 'C.A.R.',
      ammoTypes: [AmmoType.light, AmmoType.heavy],
      weaponType: WeaponType.smg,
      firemode: [
        FireModes.automatic,
      ],
      bodyDamage: 13,
      headDamage: 20,
      legDamage: 10,
      damagePerSecond: {
        FireModes.automatic: 202,
      },
      rateOfFire: {
        FireModes.automatic: 930,
      },
      magazineSizes: {
        ItemType.nothing: 20,
        ItemType.common: 22,
        ItemType.rare: 24,
        ItemType.epic: 27,
        ItemType.legendary: 27,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 1.7,
        ItemType.common: 1.64,
        ItemType.rare: 1.59,
        ItemType.epic: 1.53,
        ItemType.legendary: 1.53,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 2.13,
        ItemType.common: 2.06,
        ItemType.rare: 1.99,
        ItemType.epic: 1.92,
        ItemType.legendary: 1.92,
      },
    ),
    Weapons.havoc: Weapon(
      name: 'HAVOC',
      ammoTypes: [AmmoType.energy],
      weaponType: WeaponType.ar,
      firemode: [
        FireModes.automatic,
      ],
      bodyDamage: 18,
      headDamage: 32,
      legDamage: 15,
      damagePerSecond: {
        FireModes.automatic: 202,
      },
      rateOfFire: {
        FireModes.automatic: 672,
      },
      magazineSizes: {
        ItemType.nothing: 24,
        ItemType.common: 28,
        ItemType.rare: 32,
        ItemType.epic: 36,
        ItemType.legendary: 36,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 3.2,
        ItemType.common: 3.09,
        ItemType.rare: 2.99,
        ItemType.epic: 2.88,
        ItemType.legendary: 2.88,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 3.2,
        ItemType.common: 3.09,
        ItemType.rare: 2.99,
        ItemType.epic: 2.88,
        ItemType.legendary: 2.88,
      },
    ),
    Weapons.flatline: Weapon(
      name: 'VK-47 Flatline',
      ammoTypes: [AmmoType.heavy],
      weaponType: WeaponType.ar,
      firemode: [
        FireModes.automatic,
      ],
      bodyDamage: 18,
      headDamage: 32,
      legDamage: 14,
      damagePerSecond: {
        FireModes.automatic: 180,
      },
      rateOfFire: {
        FireModes.automatic: 600,
      },
      magazineSizes: {
        ItemType.nothing: 20,
        ItemType.common: 25,
        ItemType.rare: 28,
        ItemType.epic: 30,
        ItemType.legendary: 30,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 2.4,
        ItemType.common: 2.32,
        ItemType.rare: 2.24,
        ItemType.epic: 2.16,
        ItemType.legendary: 2.16,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 3.1,
        ItemType.common: 3,
        ItemType.rare: 2.89,
        ItemType.epic: 2.79,
        ItemType.legendary: 2.79,
      },
    ),
    Weapons.hemlok: Weapon(
      name: 'Hemlok Burst',
      ammoTypes: [AmmoType.heavy],
      weaponType: WeaponType.ar,
      firemode: [
        FireModes.burst,
        FireModes.single,
      ],
      bodyDamage: 20,
      headDamage: 35,
      legDamage: 15,
      damagePerSecond: {
        FireModes.burst: 138,
        FireModes.single: 128,
      },
      rateOfFire: {
        FireModes.burst: 414,
        FireModes.single: 384,
      },
      magazineSizes: {
        ItemType.nothing: 18,
        ItemType.common: 24,
        ItemType.rare: 27,
        ItemType.epic: 30,
        ItemType.legendary: 30,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 2.4,
        ItemType.common: 2.32,
        ItemType.rare: 2.24,
        ItemType.epic: 2.16,
        ItemType.legendary: 2.16,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 2.85,
        ItemType.common: 2.76,
        ItemType.rare: 2.66,
        ItemType.epic: 2.57,
        ItemType.legendary: 2.57,
      },
    ),
    Weapons.r301: Weapon(
      name: 'R-301 Carbine',
      ammoTypes: [AmmoType.light],
      weaponType: WeaponType.ar,
      firemode: [
        FireModes.automatic,
        FireModes.single,
      ],
      bodyDamage: 14,
      headDamage: 25,
      legDamage: 11,
      rateOfFire: {
        FireModes.automatic: 810,
        FireModes.single: 810,
      },
      damagePerSecond: {
        FireModes.automatic: 189,
        FireModes.single: 189,
      },
      magazineSizes: {
        ItemType.nothing: 18,
        ItemType.common: 20,
        ItemType.rare: 25,
        ItemType.epic: 28,
        ItemType.legendary: 28,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 2.4,
        ItemType.common: 2.32,
        ItemType.rare: 2.24,
        ItemType.epic: 2.16,
        ItemType.legendary: 2.16,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 3.2,
        ItemType.common: 3.09,
        ItemType.rare: 2.99,
        ItemType.epic: 2.88,
        ItemType.legendary: 2.88,
      },
    ),
    Weapons.devotion: Weapon(
      name: 'Devotion',
      ammoTypes: [AmmoType.energy],
      weaponType: WeaponType.lmg,
      firemode: [
        FireModes.automatic,
      ],
      bodyDamage: 15,
      headDamage: 23,
      legDamage: 13,
      rateOfFire: {
        FireModes.automatic: 900,
      },
      damagePerSecond: {
        FireModes.automatic: 225,
      },
      magazineSizes: {
        ItemType.nothing: 36,
        ItemType.common: 40,
        ItemType.rare: 44,
        ItemType.epic: 48,
        ItemType.legendary: 48,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 2.8,
        ItemType.common: 2.71,
        ItemType.rare: 2.61,
        ItemType.epic: 2.52,
        ItemType.legendary: 2.52,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 3.63,
        ItemType.common: 3.51,
        ItemType.rare: 3.39,
        ItemType.epic: 3.27,
        ItemType.legendary: 3.27,
      },
    ),
    Weapons.lstar: Weapon(
      name: 'L-STAR EMG',
      ammoTypes: [AmmoType.energy],
      weaponType: WeaponType.lmg,
      firemode: [
        FireModes.automatic,
      ],
      bodyDamage: 17,
      headDamage: 26,
      legDamage: 14,
      rateOfFire: {
        FireModes.automatic: 600,
      },
      damagePerSecond: {
        FireModes.automatic: 170,
      },
      magazineSizes: {
        ItemType.nothing: 22,
        ItemType.common: 22,
        ItemType.rare: 22,
        ItemType.epic: 22,
        ItemType.legendary: 22,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 2.45,
        ItemType.common: 2.37,
        ItemType.rare: 2.29,
        ItemType.epic: 2.21,
        ItemType.legendary: 2.21,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 2.45,
        ItemType.common: 2.37,
        ItemType.rare: 2.29,
        ItemType.epic: 2.21,
        ItemType.legendary: 2.21,
      },
    ),
    Weapons.spitfire: Weapon(
      name: 'M600 Spitfire',
      ammoTypes: [AmmoType.heavy],
      weaponType: WeaponType.lmg,
      firemode: [
        FireModes.automatic,
      ],
      bodyDamage: 18,
      headDamage: 27,
      legDamage: 15,
      rateOfFire: {
        FireModes.automatic: 540,
      },
      damagePerSecond: {
        FireModes.automatic: 162,
      },
      magazineSizes: {
        ItemType.nothing: 35,
        ItemType.common: 40,
        ItemType.rare: 45,
        ItemType.epic: 50,
        ItemType.legendary: 50,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 3.4,
        ItemType.common: 3.29,
        ItemType.rare: 3.17,
        ItemType.epic: 3.06,
        ItemType.legendary: 3.06,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 3.15,
        ItemType.common: 3.05,
        ItemType.rare: 2.94,
        ItemType.epic: 2.84,
        ItemType.legendary: 2.84,
      },
    ),
    Weapons.rampage: Weapon(
      name: 'Rampage',
      ammoTypes: [AmmoType.heavy],
      weaponType: WeaponType.lmg,
      firemode: [
        FireModes.automatic,
      ],
      bodyDamage: 26,
      headDamage: 39,
      legDamage: 22,
      rateOfFire: {
        FireModes.automatic: 300,
      },
      damagePerSecond: {
        FireModes.automatic: 130,
      },
      magazineSizes: {
        ItemType.nothing: 28,
        ItemType.common: 32,
        ItemType.rare: 34,
        ItemType.epic: 40,
        ItemType.legendary: 40,
      },
    ),
    Weapons.g7scout: Weapon(
      name: 'G7 Scout',
      ammoTypes: [AmmoType.light],
      weaponType: WeaponType.marksman,
      firemode: [
        FireModes.single,
        FireModes.burst,
      ],
      bodyDamage: 36,
      headDamage: 72,
      legDamage: 27,
      rateOfFire: {
        FireModes.single: 240,
        FireModes.burst: 253,
      },
      damagePerSecond: {
        FireModes.single: 144,
        FireModes.burst: 152,
      },
      magazineSizes: {
        ItemType.mythic: 20,
      },
      tacReloadTimesInSeconds: {
        ItemType.mythic: 2.16,
      },
      fullReloadTimesInSeconds: {
        ItemType.mythic: 2.7,
      },
      isMythic: true,
    ),
    Weapons.tripletake: Weapon(
      name: 'Triple Take',
      ammoTypes: [AmmoType.energy],
      weaponType: WeaponType.marksman,
      firemode: [
        FireModes.single,
      ],
      bodyDamage: 63,
      headDamage: 111,
      legDamage: 57,
      rateOfFire: {
        FireModes.single: 72,
      },
      damagePerSecond: {
        FireModes.single: 76,
      },
      magazineSizes: {
        ItemType.nothing: 18,
        ItemType.common: 21,
        ItemType.rare: 24,
        ItemType.epic: 27,
        ItemType.legendary: 27,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 2.34,
        ItemType.common: 2.26,
        ItemType.rare: 2.18,
        ItemType.epic: 2.11,
        ItemType.legendary: 2.11,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 3.06,
        ItemType.common: 2.96,
        ItemType.rare: 2.85,
        ItemType.epic: 2.75,
        ItemType.legendary: 2.75,
      },
    ),
    Weapons.bocek: Weapon(
      name: 'Bocek Compound Bow',
      ammoTypes: [AmmoType.arrows],
      weaponType: WeaponType.marksman,
      firemode: [
        FireModes.single,
      ],
      bodyDamage: 60,
      headDamage: 105,
      legDamage: 54,
      rateOfFire: {
        FireModes.single: 180,
      },
      damagePerSecond: {
        FireModes.single: 107,
      },
    ),
    Weapons.thirtythirty: Weapon(
      name: '30-30 Repeater',
      ammoTypes: [AmmoType.heavy],
      weaponType: WeaponType.marksman,
      firemode: [
        FireModes.single,
      ],
      bodyDamage: 57,
      headDamage: 100,
      legDamage: 48,
      rateOfFire: {
        FireModes.single: 139,
      },
      damagePerSecond: {
        FireModes.single: 97,
      },
      magazineSizes: {
        ItemType.nothing: 6,
        ItemType.common: 8,
        ItemType.rare: 10,
        ItemType.epic: 12,
        ItemType.legendary: 12,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: .33,
        ItemType.common: .31,
        ItemType.rare: .29,
        ItemType.epic: .26,
        ItemType.legendary: .26,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: .75,
        ItemType.common: .71,
        ItemType.rare: .66,
        ItemType.epic: .6,
        ItemType.legendary: .6,
      },
    ),
    Weapons.chargerifle: Weapon(
      name: 'Charge Rifle',
      ammoTypes: [AmmoType.sniper],
      weaponType: WeaponType.sniper,
      firemode: [
        FireModes.single,
      ],
      bodyDamage: 90,
      headDamage: 116,
      legDamage: 90,
      rateOfFire: {
        FireModes.single: 26,
      },
      damagePerSecond: {
        FireModes.single: 39,
      },
      magazineSizes: {
        ItemType.nothing: 8,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 4,
        // ItemType.common: 3.87,
        // ItemType.rare: 3.73,
        // ItemType.epic: 3.6,
        // ItemType.legendary: 3.6,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 5.1,
        // ItemType.common: 4.93,
        // ItemType.rare: 4.76,
        // ItemType.epic: 4.59,
        // ItemType.legendary:4.59,
      },
    ),
    Weapons.longbow: Weapon(
      name: 'Longbow DMR',
      ammoTypes: [AmmoType.sniper],
      weaponType: WeaponType.sniper,
      firemode: [
        FireModes.single,
      ],
      bodyDamage: 55,
      headDamage: 118,
      legDamage: 44,
      rateOfFire: {
        FireModes.single: 78,
      },
      damagePerSecond: {
        FireModes.single: 72,
      },
      magazineSizes: {
        ItemType.nothing: 6,
        ItemType.common: 8,
        ItemType.rare: 10,
        ItemType.epic: 12,
        ItemType.legendary: 12,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 2.66,
        ItemType.common: 2.57,
        ItemType.rare: 2.48,
        ItemType.epic: 2.39,
        ItemType.legendary: 2.39,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 3.66,
        ItemType.common: 3.54,
        ItemType.rare: 3.41,
        ItemType.epic: 3.29,
        ItemType.legendary: 3.29,
      },
    ),
    Weapons.kraber: Weapon(
      name: 'Kraber .50-Cal Sniper',
      ammoTypes: [AmmoType.sniper],
      weaponType: WeaponType.sniper,
      firemode: [
        FireModes.single,
      ],
      bodyDamage: 140,
      headDamage: 280,
      legDamage: 112,
      rateOfFire: {
        FireModes.single: 25,
      },
      damagePerSecond: {
        FireModes.single: 58,
      },
      magazineSizes: {
        ItemType.mythic: 4,
      },
      tacReloadTimesInSeconds: {
        ItemType.mythic: 3.2,
      },
      fullReloadTimesInSeconds: {
        ItemType.mythic: 4.3,
      },
      isMythic: true,
    ),
    Weapons.sentinel: Weapon(
      name: 'Sentinel',
      ammoTypes: [AmmoType.sniper],
      weaponType: WeaponType.sniper,
      firemode: [
        FireModes.single,
      ],
      bodyDamage: 70,
      headDamage: 140,
      legDamage: 63,
      rateOfFire: {
        FireModes.single: 31,
      },
      damagePerSecond: {
        FireModes.single: 36,
      },
      magazineSizes: {
        ItemType.nothing: 4,
        ItemType.common: 5,
        ItemType.rare: 6,
        ItemType.epic: 7,
        ItemType.legendary: 7,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 2.5,
        ItemType.common: 2.42,
        ItemType.rare: 2.33,
        ItemType.epic: 3.25,
        ItemType.legendary: 2.25,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 3.6,
        ItemType.common: 3.48,
        ItemType.rare: 3.36,
        ItemType.epic: 3.24,
        ItemType.legendary: 3.24,
      },
    ),
    Weapons.eva8: Weapon(
      name: 'EVA-8 Auto',
      ammoTypes: [AmmoType.shotgun],
      weaponType: WeaponType.shotgun,
      firemode: [
        FireModes.automatic,
      ],
      bodyDamage: 54,
      headDamage: 72,
      legDamage: 54,
      rateOfFire: {
        FireModes.automatic: 120,
      },
      damagePerSecond: {
        FireModes.automatic: 108,
      },
      magazineSizes: {
        ItemType.nothing: 8,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 2.5,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 2.8,
      },
    ),
    Weapons.mastiff: Weapon(
      name: 'Mastiff',
      ammoTypes: [AmmoType.shotgun],
      weaponType: WeaponType.shotgun,
      firemode: [
        FireModes.single,
      ],
      bodyDamage: 112,
      headDamage: 144,
      legDamage: 112,
      rateOfFire: {
        FireModes.single: 72,
      },
      damagePerSecond: {
        FireModes.single: 134,
      },
      magazineSizes: {
        ItemType.mythic: 4,
      },
      tacReloadTimesInSeconds: {
        ItemType.mythic: 1.03,
      },
      fullReloadTimesInSeconds: {
        ItemType.mythic: 1.7,
      },
      isMythic: true,
    ),
    Weapons.mozambique: Weapon(
      name: 'Mozambique',
      ammoTypes: [AmmoType.shotgun],
      weaponType: WeaponType.shotgun,
      firemode: [
        FireModes.automatic,
      ],
      bodyDamage: 45,
      headDamage: 57,
      legDamage: 45,
      rateOfFire: {
        FireModes.automatic: 132,
      },
      damagePerSecond: {
        FireModes.automatic: 99,
      },
      magazineSizes: {
        ItemType.nothing: 6,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 1.9,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 2.4,
      },
    ),
    Weapons.peacekeeper: Weapon(
      name: 'Peacekeeper',
      ammoTypes: [AmmoType.shotgun],
      weaponType: WeaponType.shotgun,
      firemode: [
        FireModes.single,
      ],
      bodyDamage: 99,
      headDamage: 121,
      legDamage: 99,
      rateOfFire: {
        FireModes.single: 55,
      },
      damagePerSecond: {
        FireModes.single: 90,
      },
      magazineSizes: {
        ItemType.nothing: 5,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 2.5,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 3.5,
      },
    ),
    Weapons.re45: Weapon(
      name: 'RE-45 Auto',
      ammoTypes: [AmmoType.light],
      weaponType: WeaponType.pistol,
      firemode: [
        FireModes.automatic,
      ],
      bodyDamage: 54,
      headDamage: 72,
      legDamage: 54,
      rateOfFire: {
        FireModes.automatic: 780,
      },
      damagePerSecond: {
        FireModes.automatic: 156,
      },
      magazineSizes: {
        ItemType.nothing: 16,
        ItemType.common: 19,
        ItemType.rare: 22,
        ItemType.epic: 25,
        ItemType.legendary: 25,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 1.5,
        ItemType.common: 1.5,
        ItemType.rare: 1.5,
        ItemType.epic: 1.5,
        ItemType.legendary: 1.5,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 1.95,
        ItemType.common: 1.95,
        ItemType.rare: 1.95,
        ItemType.epic: 1.95,
        ItemType.legendary: 1.95,
      },
    ),
    Weapons.re45: Weapon(
      name: 'RE-45 Auto',
      ammoTypes: [AmmoType.light],
      weaponType: WeaponType.pistol,
      firemode: [
        FireModes.automatic,
      ],
      bodyDamage: 54,
      headDamage: 72,
      legDamage: 54,
      rateOfFire: {
        FireModes.automatic: 780,
      },
      damagePerSecond: {
        FireModes.automatic: 156,
      },
      magazineSizes: {
        ItemType.nothing: 16,
        ItemType.common: 19,
        ItemType.rare: 22,
        ItemType.epic: 25,
        ItemType.legendary: 25,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 1.5,
        ItemType.common: 1.5,
        ItemType.rare: 1.5,
        ItemType.epic: 1.5,
        ItemType.legendary: 1.5,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 1.95,
        ItemType.common: 1.95,
        ItemType.rare: 1.95,
        ItemType.epic: 1.95,
        ItemType.legendary: 1.95,
      },
    ),
    Weapons.p2020: Weapon(
      name: 'P2020',
      ammoTypes: [AmmoType.light],
      weaponType: WeaponType.pistol,
      firemode: [
        FireModes.single,
      ],
      bodyDamage: 18,
      headDamage: 27,
      legDamage: 16,
      rateOfFire: {
        FireModes.single: 420,
      },
      damagePerSecond: {
        FireModes.single: 126,
      },
      magazineSizes: {
        ItemType.nothing: 14,
        ItemType.common: 16,
        ItemType.rare: 18,
        ItemType.epic: 21,
        ItemType.legendary: 21,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 1.25,
        ItemType.common: 1.25,
        ItemType.rare: 1.25,
        ItemType.epic: 1.25,
        ItemType.legendary: 1.25,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 1.25,
        ItemType.common: 1.25,
        ItemType.rare: 1.25,
        ItemType.epic: 1.25,
        ItemType.legendary: 1.25,
      },
    ),
    Weapons.wingman: Weapon(
      name: 'Wingman',
      ammoTypes: [AmmoType.heavy],
      weaponType: WeaponType.pistol,
      firemode: [
        FireModes.single,
      ],
      bodyDamage: 45,
      headDamage: 97,
      legDamage: 41,
      rateOfFire: {
        FireModes.single: 156,
      },
      damagePerSecond: {
        FireModes.single: 117,
      },
      magazineSizes: {
        ItemType.nothing: 6,
        ItemType.common: 7,
        ItemType.rare: 8,
        ItemType.epic: 9,
        ItemType.legendary: 9,
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 2.1,
        ItemType.common: 2.1,
        ItemType.rare: 2.1,
        ItemType.epic: 2.1,
        ItemType.legendary: 2.1,
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 2.1,
        ItemType.common: 2.1,
        ItemType.rare: 2.1,
        ItemType.epic: 2.1,
        ItemType.legendary: 2.1,
      },
    ),
  };
}
