bossbar remove minecraft:fifteenboss_bar
give @a[tag=DungeonPlay_15] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/fifteen_dungeon/boss/boss"}}
#execute as @a[tag=DungeonPlay_15] if entity @s[nbt={SelectedItem:{tag:{dancing:[1]}}}] run give @s minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/fifteen_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_15] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_15] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_15] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:fifteenboss_bar
scoreboard players add @a[tag=DungeonPlay_15] DungeonClear_Num 5
execute as @a[tag=DungeonPlay_15] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
tag @a[tag=DungeonPlay_15] remove CountLeader
tag @a[tag=DungeonPlay_15] remove DungeonPlay
tag @a[tag=DungeonPlay_15] remove BossBattle15
scoreboard players set $15 dungeon_play_now 0
scoreboard objectives remove FifteenDunDeath
scoreboard objectives remove FifteenBossSkill
scoreboard objectives remove 15_boss_hp_checker
kill @e[tag=FifteenDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=FifteenDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/fifteendungeon/boss/clearboss_tp 100t