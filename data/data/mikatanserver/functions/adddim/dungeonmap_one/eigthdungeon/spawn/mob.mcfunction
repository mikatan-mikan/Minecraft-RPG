execute at @s if block ~ ~1 ~5 air run summon guardian ~ ~1 ~5 {Attributes:[{Name: "minecraft:generic.attack_damage",Base: 20},{Name:"minecraft:generic.armor",Base:10}],DeathLootTable:"mikatanserver:dungeon/fourth_dungeon/mob/allmob",Tags:["EigDunMob"]}

execute at @s if block ~5 ~1 ~ air run summon guardian ~5 ~1 ~ {Attributes:[{Name: "minecraft:generic.attack_damage",Base: 20},{Name:"minecraft:generic.armor",Base:10}],DeathLootTable:"mikatanserver:dungeon/fourth_dungeon/mob/allmob",Tags:["EigDunMob"]}

execute at @s if block ~ ~1 ~-5 air run summon guardian ~ ~1 ~-5 {Attributes:[{Name: "minecraft:generic.attack_damage",Base: 20},{Name:"minecraft:generic.armor",Base:10}],DeathLootTable:"mikatanserver:dungeon/fourth_dungeon/mob/allmob",Tags:["EigDunMob"]}

execute at @s if block ~-5 ~1 ~ air run summon guardian ~-5 ~1 ~ {Attributes:[{Name: "minecraft:generic.attack_damage",Base: 20},{Name:"minecraft:generic.armor",Base:10}],DeathLootTable:"mikatanserver:dungeon/fourth_dungeon/mob/allmob",Tags:["EigDunMob"]}


kill @s