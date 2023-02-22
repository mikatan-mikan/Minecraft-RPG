bossbar remove minecraft:twentyeightboss_bar

# advancement grant @a[tag=DungeonPlay_28] only mikatanserver:tp/dungeon_clear/twentyeight
scoreboard objectives remove TwentyeightDSkillTimer1
execute store result score $chests TwentyeightDunDeath run clear @a oak_door{Twentyeight_chest:1b}

execute if score $28_Difficulty Temporary matches 0 run give @a[tag=DungeonPlay_28] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"夢の精と新たなお告げ","color":"white"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentyeight_dungeon/boss/boss0"}}
execute if score $chests TwentyeightDunDeath matches 1.. if score $28_Difficulty Temporary matches 0 run give @a[tag=DungeonPlay_28] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"夢の精と新たなお告げ","color":"white"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentyeight_dungeon/boss/boss0"}}
execute if score $28_Difficulty Temporary matches 1 run give @a[tag=DungeonPlay_28] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"夢の精と新たなお告げ","color":"white"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentyeight_dungeon/boss/boss1"}}
execute if score $chests TwentyeightDunDeath matches 1.. if score $28_Difficulty Temporary matches 1 run give @a[tag=DungeonPlay_28] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"夢の精と新たなお告げ","color":"white"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentyeight_dungeon/boss/boss1"}}

execute as @a[tag=DungeonPlay_28] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_28] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_28] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:twentyeightboss_bar
scoreboard players add @a[tag=DungeonPlay_28] DungeonClear_Num 3
execute as @a[tag=DungeonPlay_28] run function mikatanserver:adddim/dungeonmap_one/atks_xp
tag @a[tag=DungeonPlay_28] remove CountLeader
tag @a[tag=DungeonPlay_28] remove DungeonPlay
tag @a[tag=DungeonPlay_28] remove BossBattle28
tag @a[tag=DungeonPlay_28] add Return_Dun_28
tag @a[tag=DungeonPlay_28] remove DungeonPlay_28
scoreboard players set $28 dungeon_play_now 0
execute if score $28_Difficulty Temporary matches 0 run scoreboard players add $28_0_Clear ClearPer 1
execute if score $28_Difficulty Temporary matches 1 run scoreboard players add $28_1_Clear ClearPer 1
scoreboard objectives remove TwentyeightDunDeath
kill @e[tag=TwentyeightDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentyeightDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/clearboss_tp 100t