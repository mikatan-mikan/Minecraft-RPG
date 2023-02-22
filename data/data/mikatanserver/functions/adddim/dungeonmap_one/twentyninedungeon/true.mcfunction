bossbar remove minecraft:twentynineboss_bar

# advancement grant @a[tag=DungeonPlay_29] only mikatanserver:tp/dungeon_clear/twentynine
scoreboard objectives remove TwentynineDSkillTimer1
execute store result score $chests TwentynineDunDeath run clear @a oak_door{Twentynine_chest:1b}


scoreboard players set $leveling_xp TMP 10
scoreboard players set $leveling_lv TMP 80
execute as @a[tag=DungeonPlay_29] run function mikatanserver:adddim/dungeonmap_one/_leveling/give_xp
scoreboard players reset $leveling_xp TMP

execute as @a[tag=DungeonPlay_29] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_29] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_29] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:twentynineboss_bar
scoreboard players add @a[tag=DungeonPlay_29] DungeonClear_Num 3
execute as @a[tag=DungeonPlay_29] run function mikatanserver:adddim/dungeonmap_one/atks_xp
tag @a[tag=DungeonPlay_29] remove CountLeader
tag @a[tag=DungeonPlay_29] remove DungeonPlay
tag @a[tag=DungeonPlay_29] remove BossBattle29
tag @a[tag=DungeonPlay_29] add Return_Dun_29
tag @a[tag=DungeonPlay_29] remove DungeonPlay_29
scoreboard players set $29 dungeon_play_now 0
scoreboard players add $29_Clear ClearPer 1
scoreboard objectives remove TwentynineDunDeath
kill @e[tag=TwentynineDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentynineDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/boss/clearboss_tp 100t