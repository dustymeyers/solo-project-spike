--DROP TABLE "features";



CREATE TABLE "classes" (
	"id" SERIAL PRIMARY KEY,
	"class_name" VARCHAR(15) NOT NULL
);

CREATE TABLE "features" (
	"id" SERIAL PRIMARY KEY,
	"feature_name" VARCHAR(64) NOT NULL,
	"feature_description" TEXT NOT NULL
);

CREATE TABLE "classes_features" (
  "id" SERIAL PRIMARY KEY,
  "class_id" INT REFERENCES "classes" NOT NULL,
  "feature_id" INT REFERENCES "features" NOT NULL
);

INSERT INTO "classes" ("class_name")
VALUES 
('Barbarian'),	-- 1
('Bard'), 	    -- 2
('Cleric'),    	-- 3
('Druid'), 	  	-- 4
('Fighter'),   	-- 5
('Monk'), 	   	-- 6
('Paladin'),   	-- 7
('Ranger'),	   	-- 8
('Rogue'),	   	-- 9
('Sorcerer'),  	-- 10
('Warlock'),  	-- 11
('Wizard');	   	-- 12

INSERT INTO "features" ("feature_name", "feature_description")
VALUES
('Rage', 'In battle, you fight with primal ferocity. On your turn, you can enter a rage as a bonus action.

While raging, you gain the following benefits if you aren''t wearing heavy armor:

- You have advantage on Strength checks and Strength saving throws.
- When you make a melee weapon attack using Strength, you gain a bonus to the damage roll that increases as you gain levels as a barbarian, as shown in the Rage Damage column of the Barbarian table.
- You have resistance to bludgeoning, piercing, and slashing damage.

If you are able to cast spells, you can''t cast them or concentrate on them while raging.

Your rage lasts for 1 minute. It ends early if you are knocked unconscious or if your turn ends and you haven''t attacked a hostile creature since your last turn or taken damage since then. You can also end your rage on your turn as a bonus action.

Once you have raged the number of times shown for your barbarian level in the Rages column of the Barbarian table, you must finish a long rest before you can rage again.'),	-- 1 Barbarian
('Unarmored Defense', 'While you are not wearing any armor, your Armor Class equals 10 + your Dexterity modifier + your Constitution modifier. You can use a shield and still gain this benefit.'),	-- 2 Barbarian
('Spellcasting', 'You have learned to untangle and reshape the fabric of reality in harmony with your wishes and music.

Your spells are part of your vast repertoire, magic that you can tune to different situations.'),	-- 3 Bard
('Bardic Inspiration', 'You can inspire others through stirring words or music. To do so, you use a bonus action on your turn to choose one creature other than yourself within 60 feet of you who can hear you. That creature gains one Bardic Inspiration die, a d6.

Once within the next 10 minutes, the creature can roll the die and add the number rolled to one ability check, attack roll, or saving throw it makes. The creature can wait until after it rolls the d20 before deciding to use the Bardic Inspiration die, but must decide before the GM says whether the roll succeeds or fails. Once the Bardic Inspiration die is rolled, it is lost. A creature can have only one Bardic Inspiration die at a time.

You can use this feature a number of times equal to your Charisma modifier (a minimum of once). You regain any expended uses when you finish a long rest.

Your Bardic Inspiration die changes when you reach certain levels in this class. The die becomes a d8 at 5th level, a d10 at 10th level, and a d12 at 15th level.'),	-- 4 Bard
('Spellcasting', 'As a conduit for divine power, you can cast cleric spells.'),	-- 5 Cleric
('Life Domain', 'The Life domain focuses on the vibrant positive energy-one of the fundamental forces of the universe-that sustains all life. The gods of life promote vitality and health through healing the sick and wounded, caring for those in need, and driving away the forces of death and undeath. Almost any non-evil deity can claim influence over this domain, particularly agricultural deities (such as Chauntea, Arawai, and Demeter), sun gods (such as Lathander, Pelor, and Re-Horakhty), gods of healing or endurance (such as Ilmater, Mishakal, Apollo, and Diancecht), and gods of home and community (such as Hestia, Hathor, and Boldrei).

When you choose this domain at 1st level, you gain proficiency with heavy armor. 

Also starting at 1st level, your healing spells are more effective. Whenever you use a spell of 1st level or higher to restore hit points to a creature, the creature regains additional hit points equal to 2 + the spell''s level.'),	-- 6 Cleric
('Druidic', 'You know Druidic, the secret language of druids. You can speak the language and use it to leave hidden messages. You and others who know this language automatically spot such a message. Others spot the message''s presence with a successful DC 15 Wisdom (Perception) check but can''t decipher it without magic.'),	-- 7 Druid
('Spellcasting', 'Drawing on the divine essence of nature itself, you can cast spells to shape that essence to your will.'),	-- 8 Druid
('Fighting Style: Great Weapon', 'When you roll a 1 or 2 on a damage die for an attack you make with a melee weapon that you are wielding with two hands, you can reroll the die and must use the new roll, even if the new roll is a 1 or a 2. The weapon must have the two-handed or versatile property for you to gain this benefit.'),	-- 9 Fighter
('Second Wind', 'You have a limited well of stamina that you can draw on to protect yourself from harm. On your turn, you can use a bonus action to regain hit points equal to 1d10 + your fighter level. Once you use this feature, you must finish a short or long rest before you can use it again.'),	-- 10 Fighter
('Unarmored Defense', 'Beginning at 1st level, while you are wearing no armor and not wielding a shield, your AC equals 10 + your Dexterity modifier + your Wisdom modifier.'),	-- 11 Monk
('Martial Arts', 'At 1st level, your practice of martial arts gives you mastery of combat styles that use unarmed strikes and monk weapons, which are shortswords and any simple melee weapons that don''t have the two- handed or heavy property.

You gain the following benefits while you are unarmed or wielding only monk weapons and you aren''t wearing armor or wielding a shield:

- You can use Dexterity instead of Strength for the attack and damage rolls of your unarmed strikes and monk weapons.
- You can roll a d4 in place of the normal damage of your unarmed strike or monk weapon. This die changes as you gain monk levels, as shown in the Martial Arts column of the Monk table.
- When you use the Attack action with an unarmed strike or a monk weapon on your turn, you can make one unarmed strike as a bonus action. For example, if you take the Attack action and attack with a quarterstaff, you can also make an unarmed strike as a bonus action, assuming you haven''t already taken a bonus action this turn.

Certain monasteries use specialized forms of the monk weapons. For example, you might use a club that is two lengths of wood connected by a short chain (called a nunchaku) or a sickle with a shorter, straighter blade (called a kama). Whatever name you use for a monk weapon, you can use the game statistics provided for the weapon.'),	-- 12 Monk
('Divine Sense', 'The presence of strong evil registers on your senses like a noxious odor, and powerful good rings like heavenly music in your ears. As an action, you can open your awareness to detect such forces. Until the end of your next turn, you know the location of any celestial, fiend, or undead within 60 feet of you that is not behind total cover. You know the type (celestial, fiend, or undead) of any being whose presence you sense, but not its identity (the vampire Count Strahd von Zarovich, for instance). Within the same radius, you also detect the presence of any place or object that has been consecrated or desecrated, as with the *hallow* spell.

You can use this feature a number of times equal to 1 + your Charisma modifier. When you finish a long rest, you regain all expended uses.'),	-- 13 Paladin
('Lay on Hands', 'Your blessed touch can heal wounds. You have a pool of healing power that replenishes when you take a long rest. With that pool, you can restore a total number of hit points equal to your paladin level × 5.

As an action, you can touch a creature and draw power from the pool to restore a number of hit points to that creature, up to the maximum amount remaining in your pool.

Alternatively, you can expend 5 hit points from your pool of healing to cure the target of one disease or neutralize one poison affecting it. You can cure multiple diseases and neutralize multiple poisons with a single use of Lay on Hands, expending hit points separately for each one.

This feature has no effect on undead and constructs.'),	-- 14 Paladin
('Favored Enemy', 'Beginning at 1st level, you have significant experience studying, tracking, hunting, and even talking to a certain type of enemy.

Choose a type of favored enemy: aberrations, beasts, celestials, constructs, dragons, elementals, fey, fiends, giants, monstrosities, oozes, plants, or undead. Alternatively, you can select two races of humanoid (such as gnolls and orcs) as favored enemies.

You have advantage on Wisdom (Survival) checks to track your favored enemies, as well as on Intelligence checks to recall information about them.

When you gain this feature, you also learn one language of your choice that is spoken by your favored enemies, if they speak one at all.

You choose one additional favored enemy, as well as an associated language, at 6th and 14th level. As you gain levels, your choices should reflect the types of monsters you have encountered on your adventures.'),	-- 15 Ranger
('Natural Explorer', 'You are particularly familiar with one type of natural environment and are adept at traveling and surviving in such regions. Choose one type of favored terrain: arctic, coast, desert, forest, grassland, mountain, or swamp. When you make an Intelligence or Wisdom check related to your favored terrain, your proficiency bonus is doubled if you are using a skill that you''re proficient in.

While traveling for an hour or more in your favored terrain, you gain the following benefits:

- Difficult terrain doesn''t slow your group''s travel.
- Your group can''t become lost except by magical means.
- Even when you are engaged in another activity while traveling (such as foraging, navigating, or tracking), you remain alert to danger.
- If you are traveling alone, you can move stealthily at a normal pace.
- When you forage, you find twice as much food as you normally would.
- While tracking other creatures, you also learn their exact number, their sizes, and how long ago they passed through the area.

You choose additional favored terrain types at 6th and 10th level.'),	-- 16 Ranger
('Expertise', 'At 1st level, choose two of your skill proficiencies, or one of your skill proficiencies and your proficiency with thieves'' tools. Your proficiency bonus is doubled for any ability check you make that uses either of the chosen proficiencies.

At 6th level, you can choose two more of your proficiencies (in skills or with thieves'' tools) to gain this benefit.'),	-- 17 Rogue
('Sneak Attack', 'Beginning at 1st level, you know how to strike subtly and exploit a foe''s distraction. Once per turn, you can deal an extra 1d6 damage to one creature you hit with an attack if you have advantage on the attack roll. The attack must use a finesse or a ranged weapon.

You don''t need advantage on the attack roll if another enemy of the target is within 5 feet of it, that enemy isn''t incapacitated, and you don''t have disadvantage on the attack roll.

The amount of the extra damage increases as you gain levels in this class, as shown in the Sneak Attack column of the Rogue table.'),	-- 18 Rogue
('Thieves'' Cant', 'During your rogue training you learned thieves'' cant, a secret mix of dialect, jargon, and code that allows you to hide messages in seemingly normal conversation. Only another creature that knows thieves'' cant understands such messages. It takes four times longer to convey such a message than it does to speak the same idea plainly.

In addition, you understand a set of secret signs and symbols used to convey short, simple messages, such as whether an area is dangerous or the territory of a thieves'' guild, whether loot is nearby, or whether the people in an area are easy marks or will provide a safe house for thieves on the run.'),	-- 19 Rogue
('Spellcasting', 'An event in your past, or in the life of a parent or ancestor, left an indelible mark on you, infusing you with arcane magic. This font of magic, whatever its origin, fuels your spells.'),	-- 20 Sorcerer
('Draconic Bloodline Sorcerous Origin', 'Your innate magic comes from draconic magic that was mingled with your blood or that of your ancestors. Most often, sorcerers with this origin trace their descent back to a mighty sorcerer of ancient times who made a bargain with a dragon or who might even have claimed a dragon parent. Some of these bloodlines are well established in the world, but most are obscure. Any given sorcerer could be the first of a new bloodline, as a result of a pact or some other exceptional circumstance.'),	-- 21 Sorcerer
('Dragon Ancestor', 'At 1st level, you choose one type of dragon as your ancestor. The damage type associated with each dragon is used by features you gain later.

**Table- Draconic Ancestry**

| Dragon | Damage Type |
|--------|-------------|
| Black  | Acid        |
| Blue   | Lightning   |
| Brass  | Fire        |
| Bronze | Lightning   |
| Copper | Acid        |
| Gold   | Fire        |
| Green  | Poison      |
| Red    | Fire        |
| Silver | Cold        |
| White  | Cold        |
|        |             |

You can speak, read, and write Draconic. Additionally, whenever you make a Charisma check when interacting with dragons, your proficiency bonus is doubled if it applies to the check.'),	-- 22 Sorcerer
('Draconic Resilience', 'As magic flows through your body, it causes physical traits of your dragon ancestors to emerge. At 1st level, your hit point maximum increases by 1 and increases by 1 again whenever you gain a level in this class.

Additionally, parts of your skin are covered by a thin sheen of dragon-like scales. When you aren''t wearing armor, your AC equals 13 + your Dexterity modifier.'),	-- 23 Sorcerer
('The Fiend Patron', 'You have made a pact with a fiend from the lower planes of existence, a being whose aims are evil, even if you strive against those aims. Such beings desire the corruption or destruction of all things, ultimately including you. Fiends powerful enough to forge a pact include demon lords such as Demogorgon, Orcus, Fraz''Urb-luu, and Baphomet; archdevils such as Asmodeus, Dispater, Mephistopheles, and Belial; pit fiends and balors that are especially mighty; and ultroloths and other lords of the yugoloths.'),	-- 24 Warlock
('Expanded Spell List', 'The Fiend lets you choose from an expanded list of spells when you learn a warlock spell. The following spells are added to the warlock spell list for you.

**Table- Fiend Expanded Spells**

| Spell Level | Spells                            |
|-------------|-----------------------------------|
| 1st         | burning hands, command            |
| 2nd         | blindness/deafness, scorching ray |
| 3rd         | fireball, stinking cloud          |
| 4th         | fire shield, wall of fire         |
| 5th         | flame strike, hallow              |
|             |                                   |'),	-- 25 Warlock
('Dark One''s Blessing', 'Starting at 1st level, when you reduce a hostile creature to 0 hit points, you gain temporary hit points equal to your Charisma modifier + your warlock level (minimum of 1).'),	-- 26 Warlock
('Spellcasting', 'As a student of arcane magic, you have a spellbook containing spells that show the first glimmerings of your true power.'),	-- 27 Wizard
('Arcane Recovery', 'You have learned to regain some of your magical energy by studying your spellbook. Once per day when you finish a short rest, you can choose expended spell slots to recover. The spell slots can have a combined level that is equal to or less than half your wizard level (rounded up), and none of the slots can be 6th level or higher.

For example, if you''re a 4th-level wizard, you can recover up to two levels worth of spell slots. You can recover either a 2nd-level spell slot or two 1st-level spell slots.');	-- 28 Wizard


