tellraw @a[tag=DungeonPlay_36] [{"text": "Mods Golem>>","color": "gray"},{"text": "サモンアライ","color": "red"}]
execute at @a[tag=BossBattle36] run playsound entity.lightning_bolt.impact master @s ~ ~ ~ 2 2 1
execute if score $36_Difficulty Temporary matches 2 at @a[tag=BossBattle36] run summon wolf ~ ~ ~ {Attributes:[{Name:"minecraft:generic.attack_damage",Base:30},{Name:"minecraft:generic.max_health",Base:50}],Health:50,Tags:["ThirtysixDunMob"]}
execute if score $36_Difficulty Temporary matches 1 at @a[tag=BossBattle36] run summon wolf ~ ~ ~ {Attributes:[{Name:"minecraft:generic.attack_damage",Base:15},{Name:"minecraft:generic.max_health",Base:50}],Health:50,Tags:["ThirtysixDunMob"]}
execute if score $36_Difficulty Temporary matches 0 at @a[tag=BossBattle36] run summon wolf ~ ~ ~ {Attributes:[{Name:"minecraft:generic.attack_damage",Base:5},{Name:"minecraft:generic.max_health",Base:50}],Health:50,Tags:["ThirtysixDunMob"]}
