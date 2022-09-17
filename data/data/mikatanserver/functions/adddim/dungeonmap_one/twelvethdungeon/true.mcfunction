bossbar remove minecraft:twelvethboss_bar
advancement grant @a[tag=DungeonPlay_12] only mikatanserver:tp/dungeon_clear/twelveth
execute store result score $boss_chest TMP run clear @a lever{tresurekey:1}
execute if score $boss_chest TMP matches 1 run give @a[tag=DungeonPlay_12] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/twelveth_dungeon/boss/boss"}}
execute if score $boss_chest TMP matches 2.. run give @a[tag=DungeonPlay_12] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/twelveth_dungeon/boss/boss"}} 2
#execute as @a[tag=DungeonPlay_11] if entity @s[nbt={SelectedItem:{tag:{dancing:[1]}}}] run give @s minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/Twelveth_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_12] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_12] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_12] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,110,0)へTPします","color": "yellow"}]
bossbar remove minecraft:twelvethboss_bar
scoreboard players add @a[tag=DungeonPlay_12] DungeonClear_Num 5
execute as @a[tag=DungeonPlay_12] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
tag @a[tag=DungeonPlay_12] remove CountLeader
tag @a[tag=DungeonPlay_12] remove DungeonPlay
tag @a[tag=DungeonPlay_12] remove BossBattle12
scoreboard objectives remove TwelvethDunDeath
scoreboard objectives remove TwelveBossSkill3
scoreboard objectives remove TwelveBossSkill2
scoreboard objectives remove TwelveBossSkill
scoreboard objectives remove Wind_Count
scoreboard objectives remove Wind_Rot_Count
scoreboard objectives remove BossMoveCnt
scoreboard players set $12 dungeon_play_now 0
kill @e[tag=TwelveDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwelveDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/clearboss_tp 100t