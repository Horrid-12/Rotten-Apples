# 🍎 Rotten Apple

**Curse any mob with a single bite.**

A Minecraft datapack that adds corrupted apples with the power to zombify, heal, and transform the undead mobs. Eat a Rotten Apple near a mob and watch it succumb to darkness — or use a Golden Apple to reverse the curse.

Requires the companion **Rotten Apple Resource Pack** for custom item models.

---

## ✨ Features

- **7 mob conversions** — Villagers, Horses, Hoglins, Piglins, Piglin Brutes, Cats, and Nautilus
- **6 custom foods** — Rotten Apple, Green Apple, Orange, Wither Apple, Ominous Apple, Candied Kelp
- **Wither Apple** — A devastating variant that zombifies AND withers everything nearby
- **Ominous Apple** — Grants Strength, Resistance, and Bad Omen to trigger raids
- **Zombie Horse healing** — Feed a Rotten Apple to heal, or a Golden Apple to cure it back to a normal horse
- **Wandering Trader integration** — Custom fruit trades injected automatically
- **Loot table expansion** — Custom items appear in chest loot and nature
- **Vanilla item overhaul** — Sugar and Glistering Melon Slice are now edible with bonus effects
- **3 advancements** — Evil Twin, Horseback Medic, Rotten to the Core

---

## 🍏 Custom Items

| Item | How to Get | Effect |
|------|-----------|--------|
| **Rotten Apple** | Wandering Trader (3 emeralds), chest loot | Eat near a mob to zombify it. Heals Zombie Horses. Grants Hunger on eat. |
| **Green Apple** | Wandering Trader (1 emerald), Azalea/Flowering Azalea leaf drops, Shipwreck, Trial Chambers | Grants Speed I for 10 seconds |
| **Orange** | Wandering Trader (1 emerald), Acacia leaf drops, chest loot | High saturation (14.4), nutrition 4 |
| **Wither Apple** | End City chests (1% chance), Ominous Trial Chamber rewards (5% chance) | Same conversions as Rotten Apple + Wither II to all nearby entities for 10 seconds |
| **Ominous Apple** | Pillager Outpost, Woodland Mansion | Grants Strength I + Resistance I (30s) + Bad Omen (100s). Epic rarity. |
| **Candied Kelp** | Craft Dried Kelp + Sugar | Nutrition 3, saturation 3.6, quick eat |

### Vanilla Item Overhaul

| Item | Change |
|------|--------|
| **Sugar** | Now edible. Grants Speed I for 10 seconds. Recipes auto-produce edible versions. |
| **Glistering Melon Slice** | Now edible. Grants Regeneration I for 5 seconds. Recipe auto-produces edible version. |

> Non-edible versions are automatically replaced when they enter your inventory.

---

## 🧟 Mob Conversions

| Mob | Becomes | Special Properties |
|-----|---------|-------------------|
| Villager | Zombie Villager | **Trades, profession, name, and gossips fully preserved** |
| Horse | Zombie Horse | Tamed (rideable), identity copied |
| Hoglin | Zoglin | Identity copied |
| Piglin | Zombified Piglin | Identity copied |
| Piglin Brute | Amplified Zombified Piglin | **50 HP, Strength II, Resistance I, golden axe, PersistenceRequired** |
| Cat | Black Cat | Cosmetic curse — variant changed to `all_black` |
| Nautilus | Zombie Nautilus | Identity copied |
| Zombie Horse | *Healed* | Instant Damage (heals undead), Speed I + Resistance I for 60s, baby age accelerated |
| Zombie Horse (Golden Apple) | Horse | **Cured back to normal** with random color/markings, stats preserved |

> **Wither Apple** and **Ominous Apple** perform the same conversions but Wither Apple also applies **Wither II** to all entities within 8 blocks (excluding the eater).

---

## 📦 Wandering Trader Trades

New Wandering Traders automatically receive these custom trades:

| Cost | Item |
|------|------|
| 1 Emerald | 4 Apples |
| 1 Emerald | 1 Green Apple |
| 1 Emerald | 2 Oranges |
| 3 Emeralds | 1 Rotten Apple |

---

## 🗺️ Loot Distribution

**Rotten Apples & Oranges:**
- Abandoned Mineshaft, Desert Pyramid, Simple Dungeon, Jungle Temple, Underwater Ruins, Village houses (Plains, Desert, Taiga, Snowy)

**Ominous Apple:**
- Pillager Outpost, Woodland Mansion

**Green Apples:**
- Shipwreck Supply chests, Trial Chamber rewards (normal + ominous)

**Wither Apple:**
- End City chests (1% chance), Ominous Trial Chamber rewards (5% chance)

**Natural Drops:**
- **Oranges** — Drop from Acacia Leaves
- **Green Apples** — Drop from Azalea Leaves and Flowering Azalea Leaves

**Rotten Flesh → Leather:**
- Smelt, Smoke, or Campfire cook Rotten Flesh into Leather

---

## 🎮 Testing

Use the built-in test loot table to get one of every custom item:

```
/loot give @s loot rotten_apple:test
```

---

## 📥 Installation

### Datapack

1. Download or clone this repository
2. Place the `Datapack` folder into your world's `datapacks/` directory
3. Run `/reload` or restart the server
4. You'll see a green confirmation message in chat

### Resource Pack

1. Download the companion **Rotten Apple Resource Pack**
2. Place it in your `resourcepacks/` folder
3. Enable it in-game via Options → Resource Packs

---

## 🎮 Compatibility

| | |
|---|---|
| **Minecraft Version** | 1.20.5 – 26.2+ |
| **Pack Format** | 80 – 107 |
| **Platform** | Java Edition |
| **Dependencies** | None (datapack only) |

---

## 🏆 Advancements

| Advancement | Description | Reward |
|-------------|-------------|--------|
| **Evil Twin** | Convert a Villager into a Zombie Villager | 100 XP |
| **Horseback Medic** | Heal a Zombie Horse with a Rotten Apple | 50 XP |
| **Rotten to the Core** | Convert one of every mob type (Villager, Horse, Hoglin, Piglin, Cat) | 200 XP |

---

*Made with corruption and good intentions.*
