import 'dart:ffi';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:oneshot/enums/ability_type.dart';
import 'package:oneshot/enums/gender.dart';
import 'package:oneshot/enums/legend_type.dart';
import 'package:oneshot/enums/legends.dart';
import 'package:oneshot/extensions.dart';
import 'package:oneshot/models/ability.dart';
import 'package:oneshot/models/legend.dart';

class LegendsProvider {
  Map<Legends, Legend> legends = {
    ///
    /// Ash
    /// https://apexlegends.fandom.com/wiki/Ash
    ///
    Legends.ash: Legend(
      name: 'Ash',
      tagline: 'Incisive Instigator',
      gender: Gender.female,
      inMainGame: true,
      inMobileGame: false,
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          description:
              'Ash\'s map shows the location of recent deathboxes. You can activate each death box to mark surviving attackers (once per box)',
          name: 'Marked For Death',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 25,
          description:
              'Throw a spinning snare that damages and tethers the first enemy that gets to close.',
          name: 'Arc Snare',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 120,
          description: 'Tear open a one-way portal to a targeted location',
          name: 'Phase Breach',
        ),
      },
      fullName: 'Dr. Ashleigh Reid',
      homeworld: 'Unknown',
      voiceActor: 'Anna Campbell',
      legendType: LegendType.offensive,
    ),

    ///
    /// Bangalore
    /// https://apexlegends.fandom.com/wiki/Bangalore
    ///
    Legends.bangalore: Legend(
      name: 'Bangalore',
      tagline: 'Professional Soldier',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          description:
              'Taking fire while sprinting makes you move faster for a brief time.',
          name: 'Double Time',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 33,
          description:
              'Fire a high-velocity smoke canister that explodes into a smoke wall on impact.',
          name: 'Smoke Launcher',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 180,
          description:
              'Call in an artillery strike that slowly creeps across the landscape.',
          name: 'Rolling Thunder',
        ),
      },
      homeworld: 'Gridiron',
      fullName: 'Anita Williams',
      gender: Gender.female,
      inMainGame: true,
      inMobileGame: true,
      legendType: LegendType.offensive,
      voiceActor: 'Erica Luttrell',
    ),

    ///
    /// Bloodhound
    /// https://apexlegends.fandom.com/wiki/Bloodhound
    ///
    Legends.bloodhound: Legend(
      name: 'Bloodhound',
      tagline: 'Technological Tracker',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'Tracker',
          description: 'Foes leave behind clues for you to find',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 25,
          name: 'Eye of the All Father',
          description:
              'Briefly reveal enemies, traps, and clues through all structures in front of you',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 180,
          name: 'Beast of the Hunt',
          description:
              'Transform into the ultimate hunter. Enhances your senses, allowing you to see cold tracks and move faster. Downing opponents extend duration',
        ),
      },
      homeworld: 'Talos',
      fullName: 'Blódhundr',
      gender: Gender.nonBinary,
      inMainGame: true,
      inMobileGame: true,
      legendType: LegendType.recon,
      voiceActor: 'Allegra Clark',
    ),

    ///
    /// Caustic
    /// https://apexlegends.fandom.com/wiki/Caustic
    ///
    Legends.caustic: Legend(
      name: 'Caustic',
      tagline: 'Toxic Trapper aka. Mr. Stinky',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'Nox Vision',
          description:
              'You gain threat vision on enemies moving through your gas.',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 20,
          name: 'Nox Gas Trap',
          description:
              'Place up to 6 canisters that release deadly Nox gas when shot or triggered by enemies.',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 180,
          name: 'Nox Gas Grenade',
          description: 'Blankets a large area in Nox gas.',
        ),
      },
      homeworld: 'Gaea',
      fullName: 'Dr. Mikhail Caustic',
      gender: Gender.male,
      inMainGame: true,
      inMobileGame: true,
      legendType: LegendType.defensive,
      voiceActor: 'JB Blanc',
      voiceActorLink: 'https://en.wikipedia.org/wiki/JB_Blanc',
    ),

    ///
    /// Crypto
    /// https://apexlegends.fandom.com/wiki/Crypto
    ///
    Legends.crypto: Legend(
        name: 'Crypto',
        tagline: 'Surveillance Expert',
        abilities: {
          AbilityType.passive: Ability(
            coolDownInSeconds: 0,
            name: 'Nerolink',
            description:
                'Crypto and his teamates see what hsi Surveillance Drone detects up to a 30m distance.',
          ),
          AbilityType.tactical: Ability(
            coolDownInSeconds: 40,
            name: 'Surveillance Drone',
            description:
                'Deploy an aerial camera drone that can remotely interact with Survey Beacons, Respawn Beacons, and Ally Banner cards.',
          ),
          AbilityType.ultimate: Ability(
            coolDownInSeconds: 180,
            name: 'Drone EMP',
            description:
                'Charge up an EMP from your done. The blast deals 50 shield damage, slows players and destroys traps',
          ),
        },
        homeworld: 'Gaea',
        fullName: 'Tae Joon Park',
        gender: Gender.male,
        inMainGame: true,
        inMobileGame: false,
        legendType: LegendType.recon,
        voiceActor: 'Johnny Younge',
        voiceActorLink:
            'https://twitter.com/JohnnyYoung115?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor'),

    ///
    /// Fade
    /// https://apexlegends.fandom.com/wiki/Fade
    ///
    Legends.fade: Legend(
      name: 'Fade',
      tagline: 'Phasing Punisher',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'Slipstream',
          description:
              'You can gain a short movement speed boost at the end of the slide.',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 20,
          name: 'Flashback',
          description: 'Go back to where you were a while ago from the void',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 90,
          name: 'Phase Chamber',
          description:
              'Release a phase cage to send all Legends within range into the Void',
        ),
      },
      homeworld: 'Solace',
      fullName: 'Ignacio Huamaní',
      gender: Gender.male,
      inMainGame: false,
      inMobileGame: true,
      legendType: LegendType.offensive,
      voiceActor: 'Josh Keaton',
    ),

    ///
    /// Fuse
    /// https://apexlegends.fandom.com/wiki/Fuse
    ///
    Legends.fuse: Legend(
      name: 'Fuse',
      tagline: 'Explosives Enthusiast',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'Grenadier',
          description:
              'Stack an extra grenade per inventory slot. Fire grenades farther, faster and more accurately.',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 20,
          name: 'Knuckle Cluster',
          description:
              'Launch a cluster bomb that continuously expels airburst explosives on impact',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 120,
          name: 'The Motherlode',
          description:
              'Launch a bombardment that encircles a target in a wall of flame.',
        ),
      },
      homeworld: 'Salvo',
      fullName: 'Walter Fitzroy Jr.',
      gender: Gender.male,
      inMainGame: true,
      inMobileGame: false,
      legendType: LegendType.offensive,
      voiceActor: 'Ben Prendergast',
    ),

    ///
    /// Gibraltar
    /// https://apexlegends.fandom.com/wiki/Gibraltar
    ///
    Legends.gibraltar: Legend(
      name: 'Gibraltar',
      tagline: 'Shielded Fortress',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'Gun Shield',
          description:
              'Aiming down sights deploys a gun shield that blocks incoming fire.',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 30,
          name: 'Dome of Protection',
          description: 'Blocks incoming and outgoing attacks',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 270,
          name: 'Defensive Bombardment',
          description: 'Call in concentrated mortar strike on marked position.',
        )
      },
      homeworld: 'Solace',
      fullName: 'Makoa Gibraltar',
      gender: Gender.male,
      inMainGame: true,
      inMobileGame: true,
      legendType: LegendType.defensive,
      voiceActor: 'Branscombe Richmond',
    ),

    ///
    /// Horizon
    /// https://apexlegends.fandom.com/wiki/Horizon
    ///
    Legends.horizon: Legend(
      name: 'Horizon',
      tagline: 'Gravitational Manipulator',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'Spacewalk',
          description:
              'Increase air control and reduce fall impacts with Horizon\'s custom spacesuit',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 20,
          name: 'Gravity Lift',
          description:
              'Reverses the flow of gravity, lifting players upward and boosting them outward when they exit.',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 180,
          name: 'Black Hole',
          description:
              'Deploy N.E.W.T. to create a micro black hole that pulls players in towards it.',
        )
      },
      homeworld: 'Psamathe',
      fullName: 'Dr. Mary Somers',
      gender: Gender.female,
      inMainGame: true,
      inMobileGame: false,
      legendType: LegendType.offensive,
      voiceActor: 'Elle Newlands',
    ),

    ///
    /// Lifeline
    /// https://apexlegends.fandom.com/wiki/Lifeline
    ///
    Legends.lifeline: Legend(
      name: 'Lifeline',
      tagline: 'Combat Medic',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'Combat Revive',
          description:
              'Deploy D.O.C. to revive teammates, leaving Lifeline free to defend.',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 45,
          name: 'D.O.C. Heal Drone',
          description:
              'The Drone Of Compassion (DOC) automatically heals those near it over time.',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 210,
          name: 'Care Package',
          description: 'Call in a droppod full of high quality defensive gear.',
        ),
      },
      homeworld: 'Psamathe',
      fullName: 'Ajay Che',
      gender: Gender.female,
      inMainGame: true,
      inMobileGame: true,
      legendType: LegendType.offensive,
      voiceActor: 'Mela Lee',
    ),

    ///
    /// Loba
    /// https://apexlegends.fandom.com/wiki/Loba
    ///
    Legends.loba: Legend(
      name: 'Loba',
      tagline: 'Translocatin Thief',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'Eye For Quality',
          description:
              'Nearby epic and legendary loot can be seen through walls. The range is teh same as Black Market Boutique',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 30,
          name: 'Burglar\'s Best Friend',
          description:
              'Teleport to hard-to-reach places or escape trouble quickly by throwing your jump drive bracelet.',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 180,
          name: 'Black Market Boutique',
          description:
              'Place a portable device that allows you to teleport nearby loot to your inventor. Each friendly or enemy Legend can take up to two items.',
        ),
      },
      homeworld: 'None',
      fullName: 'Loba Andrade',
      gender: Gender.female,
      inMainGame: true,
      inMobileGame: true,
      legendType: LegendType.support,
      voiceActor: 'Fryda Wolff',
    ),

    ///
    /// MadMaggie
    /// https://apexlegends.fandom.com/wiki/Mad_Maggie
    ///
    Legends.madmaggie: Legend(
      name: 'Mad Maggie',
      tagline: 'Rebel Warlord',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'Warlor\'s Ire',
          description:
              'Temporarily highlight enemies you\'ve damaged. Move faster with shotguns.',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 22,
          name: 'Riot Drill',
          description:
              'Fire a drill that attaches to an obstacle and burns enemies on the other side.',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 90,
          name: 'Wrecking Ball',
          description:
              'Throw a ball that releases speed-boosting pads and detonates near enemies.',
        )
      },
      homeworld: 'Salvo',
      fullName: 'Margaret Kōhere',
      gender: Gender.female,
      inMainGame: true,
      inMobileGame: false,
      legendType: LegendType.offensive,
      voiceActor: 'Nicola Kāwana',
    ),

    ///
    /// Mirage
    /// https://apexlegends.fandom.com/wiki/Mirage
    ///
    Legends.mirage: Legend(
      name: 'Mirage',
      tagline: 'Holographic Trickster',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'Now you see me...',
          description:
              'Automatically cloak when using Respawn Beacons and reviving teammates. Spawn a decoy and cloak when downed.',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 15,
          name: 'Psyche Out',
          description: 'Send out a holographic decoy to confuse the enemy.',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 60,
          name: 'Life of the Party',
          description:
              'Mirage deploys a team of controllable decoys to distract enemies.',
        ),
      },
      homeworld: 'Solace',
      fullName: 'Elliott Rodger Witt',
      gender: Gender.male,
      inMainGame: true,
      inMobileGame: true,
      legendType: LegendType.offensive,
      voiceActor: 'Roger Craig Smith',
    ),

    ///
    /// Newcastle
    /// https://apexlegends.fandom.com/wiki/Newcastle
    ///
    Legends.newcastle: Legend(
      name: 'Newcastle',
      tagline: 'Mobile Guardian',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'Retrieve the Wounded',
          description:
              'Drag downed allies as you revive and protect them with your Revive Shield.',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 15,
          name: 'Mobile Shield',
          description: 'Throw a drone that projects a moveable energy shield.',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 120,
          name: 'Castle Wall',
          description:
              'Leap to an ally or target area and slam down, creating a fortified stronghold.',
        ),
      },
      homeworld: 'Gridiron',
      fullName: 'Jackson Williams',
      gender: Gender.male,
      inMainGame: true,
      inMobileGame: true,
      legendType: LegendType.defensive,
      voiceActor: 'Gabe Kunda',
    ),

    ///
    /// Octane
    /// https://apexlegends.fandom.com/wiki/Octane
    ///
    Legends.octane: Legend(
      name: 'Octane',
      tagline: 'High-speed Daredevil',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'Swift Mend',
          description: 'Automatically restores health over time',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 1,
          name: 'Stim',
          description:
              'Increase walk speed by 30% and sprint speed by 40% for 6 seconds. Costs Health to use. Reduction to slows while active.',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 90,
          name: 'Launch Pad',
          description:
              'Deploy a jump pad that catapults anyone through the air. Press the jump button to double jump.',
        )
      },
      homeworld: 'Psamathe',
      fullName: 'Octavio Silva',
      gender: Gender.male,
      inMainGame: true,
      inMobileGame: true,
      legendType: LegendType.offensive,
      voiceActor: 'Nicolas Roye',
    ),

    ///
    /// Pathfinder
    /// https://apexlegends.fandom.com/wiki/Pathfinder
    ///
    Legends.pathfinder: Legend(
      name: 'Pathfinder',
      tagline: 'Forward Scout',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'Insider Knowledge',
          description:
              'Scan a Survey Beacon to reduce the cooldown of Zipline Gun.',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 30,
          name: 'Grappling Hook',
          description: 'Grabble to get out-of-reach places quickly',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 120,
          name: 'Zipline Gun',
          description: 'Create a zipline for everyone to use.',
        ),
      },
      homeworld: 'Psamathe',
      fullName: 'MRVN',
      gender: Gender.male,
      inMainGame: true,
      inMobileGame: true,
      legendType: LegendType.recon,
      voiceActor: 'Chris Edgerly',
    ),

    ///
    /// Rampart
    /// https://apexlegends.fandom.com/wiki/Rampart
    ///
    Legends.rampart: Legend(
      name: 'Rampart',
      tagline: 'Base of Fire',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'Modded Loader',
          description:
              'Increased magazine/heat capacity and faster reloads/recharge when using LMGs and the Minigun',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 20,
          name: 'Amped Cover',
          description:
              'Build a crouch-cover wall, which deploys a full-cover amped wall that blocks incoming shots and amps outgoing shots. (Max: 5)',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 120,
          name: 'Mobile Minigun "Sheila"',
          description:
              'Wield a mobile minigun with a single high capacity magazine. Place it down for anyone to use a stationary and reloadable turret. (Max: 3)',
        )
      },
      homeworld: 'Gaea',
      fullName: 'Ramya Parekh',
      gender: Gender.female,
      inMainGame: true,
      inMobileGame: false,
      legendType: LegendType.defensive,
      voiceActor: 'Anjali Bhimani',
    ),

    ///
    /// Revenant
    /// https://apexlegends.fandom.com/wiki/Revenant
    ///
    Legends.revenant: Legend(
      name: 'Revenant',
      tagline: 'Synthetic Nightmare',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'Stalker',
          description: 'You crouch walk faster and can climb walls higher.',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 25,
          name: 'Silence',
          description:
              'Throw a device that deals damage and disables enemy abilities for 15 seconds.',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 180,
          name: 'Death Totem',
          description:
              'Drop a totem that protects users from death. Instead of getting killed or downed, you will return to totem.',
        ),
      },
      homeworld: 'Solace',
      fullName: 'Kaleb Cross',
      gender: Gender.male,
      inMainGame: true,
      inMobileGame: false,
      legendType: LegendType.offensive,
      voiceActor: 'Darin De Paul',
    ),

    ///
    /// Seer
    /// https://apexlegends.fandom.com/wiki/Seer
    ///
    Legends.seer: Legend(
      name: 'Seer',
      tagline: 'Ambush Artist',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'Heart Seeker',
          description:
              'Hear and visualize the heartbeats of enemies within 75m when aiming down sights.',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 30,
          name: 'Focus of Attention',
          description:
              'Summon micro-drones to emit a delayed blast that goes through walls interrupting and revealing enemies.',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 120,
          name: 'Exhibit',
          description:
              'Create a sphere of micro-drones that reveal the location of enemies moving quickly or firing their weapons within.',
        ),
      },
      homeworld: 'Boreas',
      fullName: 'Obi Edolasim',
      gender: Gender.male,
      inMainGame: true,
      inMobileGame: false,
      legendType: LegendType.recon,
      voiceActor: 'Iké Amadi',
    ),

    ///
    /// Valkyrie
    /// https://apexlegends.fandom.com/wiki/Valkyrie
    ///
    Legends.valkyrie: Legend(
      name: 'Valkyrie',
      tagline: 'Winged Avenger',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'VTOL Jets',
          description:
              'Press the jump key while in the air to engage jetpack. You can switch between hold and toggle mode in the options menu,',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 30,
          name: 'Missle Swarm',
          description:
              'Fire a swarm of mini-rockets that damage and disorient the enemy.',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 180,
          name: 'Skyward Dive',
          description:
              'Press once to prepare for launch. Teammates can interact wiht Valkyrie to join the launch. Press again to launch into the air and skydive.',
        ),
      },
      homeworld: 'Angelia',
      fullName: 'Kairi Imahara',
      gender: Gender.female,
      inMainGame: true,
      inMobileGame: false,
      legendType: LegendType.recon,
      voiceActor: 'Erika Ishii',
    ),

    ///
    /// Wattson
    /// https://apexlegends.fandom.com/wiki/Wattson
    ///
    Legends.wattson: Legend(
      name: 'Wattson',
      tagline: 'Static Defender',
      abilities: {
        AbilityType.passive: Ability(
          coolDownInSeconds: 0,
          name: 'Spark Of Genius',
          description:
              'Ultimate Accelerants fully charge Wattson\'s ultimate and she can carry more Ultimate Accelerants. Wattson slowly restores her sheilds over time.',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 15,
          name: 'Perimeter Security',
          description:
              'Create electrified fenses by connecting nodes. Fences damage and slow enemies.',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 180,
          name: 'Interception Pylon',
          description:
              'Place an electrified pylon that destroys incoming ordnance and repairs damaged shields. Standing near Pylons boosts Wattson\'s tacticle charge rate. (Max: 1)',
        ),
      },
      homeworld: 'Solace',
      fullName: 'Natalie Paquette',
      gender: Gender.female,
      inMainGame: true,
      inMobileGame: false,
      legendType: LegendType.defensive,
      voiceActor: 'Justine Huxley',
    ),

    ///
    /// Wraith
    /// https://apexlegends.fandom.com/wiki/Wraith
    ///
    Legends.wraith: Legend(
      name: 'Wraith',
      tagline: 'Interdimensional Skirmisher',
      abilities: {
        AbilityType.passive: Ability(
          name: 'Voice From The Void',
          description:
              'A voice warns you when danger approaches. As far as you can tell, it\'s on your side.',
        ),
        AbilityType.tactical: Ability(
          coolDownInSeconds: 25,
          name: 'Into The Void',
          description:
              'Reposition Quickly through the safety of void space, avoiding all damage.',
        ),
        AbilityType.ultimate: Ability(
          coolDownInSeconds: 210,
          name: 'Dimensional Rift',
          description:
              'Link two locations with portals for 60 seconds, allowing anyone to use them.',
        )
      },
      homeworld: 'Typhon',
      fullName: 'Renee Hope Blasey',
      gender: Gender.female,
      inMainGame: true,
      inMobileGame: true,
      legendType: LegendType.offensive,
      voiceActor: 'Shantel VanSanten',
    ),
  };

  Legend? legendByName(String name) {
    Legends? legend = legends.keys.toList().firstWhereOrNull((element) =>
        element.name.toLowerCaseStripped() == name.toLowerCaseStripped());

    if (legend != null) {
      return legends[legend]!;
    }

    switch (name.toLowerCase()) {
      case 'mad_maggie':
        return legends[Legends.madmaggie]!;
    }

    return null;
  }
}
