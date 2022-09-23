bossbar remove minecraft:eightteenboss_bar
advancement grant @a[tag=DungeonPlay_18] only mikatanserver:tp/dungeon_clear/eightteen
give @a[tag=DungeonPlay_18] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/eightteen_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_18] if entity @s[nbt={SelectedItem:{tag:{dancing:[1]}}}] run give @s minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/eightteen_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_18] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_18] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_18] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:eightteenboss_bar
scoreboard players add @a[tag=DungeonPlay_18] DungeonClear_Num 7
execute as @a[tag=DungeonPlay_18] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
kill @e[tag=EightteenDunMob]
tag @a[tag=DungeonPlay_18] remove CountLeader
tag @a[tag=DungeonPlay_18] remove DungeonPlay
tag @a[tag=DungeonPlay_18] remove BossBattle18
tag @a[tag=DungeonPlay_18] add Return_Dun_18
scoreboard objectives remove EightteenDunDeath
scoreboard objectives remove EightteenBossSkill
scoreboard players reset $18_boss_hp_venus boss_hp_checker
scoreboard players reset $18_boss_hp_god boss_hp_checker
scoreboard players reset $18_boss_hp_venus TMP
scoreboard players reset $18_boss_hp_god TMP
scoreboard players reset $18 BossHP
scoreboard players set $18 dungeon_play_now 0
kill @e[tag=EightteenDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=EightteenDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/clearboss_tp 100t