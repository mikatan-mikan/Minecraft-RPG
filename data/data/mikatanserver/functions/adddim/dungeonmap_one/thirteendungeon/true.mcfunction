bossbar remove minecraft:thirteenboss_bar
give @a[tag=DungeonPlay_13] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/thirteen_dungeon/boss/boss"}}
#execute as @a[tag=DungeonPlay_11] if entity @s[nbt={SelectedItem:{tag:{dancing:[1]}}}] run give @s minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/thirteen_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_13] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_13] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_13] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,110,0)へTPします","color": "yellow"}]
bossbar remove minecraft:thirteenboss_bar
scoreboard players add @a[tag=DungeonPlay_13] DungeonClear_Num 7
execute as @a[tag=DungeonPlay_13] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
tag @a[tag=DungeonPlay_13] remove Dun13_Tower
tag @a[tag=DungeonPlay_13] remove CountLeader
tag @a[tag=DungeonPlay_13] remove DungeonPlay
tag @a[tag=DungeonPlay_13] remove BossBattle13
tag @a[tag=DungeonPlay_13] remove BossBattle13_2
tag @a[tag=DungeonPlay_13] remove DungeonPlay_13
scoreboard objectives remove ThirteenDunDeath
scoreboard objectives remove ThirteenBossSkill
scoreboard objectives remove ThirteenBossSkill2
scoreboard objectives remove 13_NextMobCheckTimer
scoreboard objectives remove 13_TowerFloor
scoreboard objectives remove 13_TowerNowMobCnt
kill @e[tag=ThirteenDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ThirteenDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss/clearboss_tp 100t