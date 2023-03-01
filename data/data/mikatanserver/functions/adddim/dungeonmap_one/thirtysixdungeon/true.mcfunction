bossbar remove minecraft:thirtysixboss_bar

# advancement grant @a[tag=DungeonPlay_36] only mikatanserver:tp/dungeon_clear/thirtysix
scoreboard objectives remove ThirtysixDSkillTimer1

execute if score $36_Difficulty Temporary matches 0 run give @a[tag=DungeonPlay_36] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"古代の鉄塊","color":"gray"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/thirtysix_dungeon/boss/boss0"}}
execute if score $36_Difficulty Temporary matches 1 run give @a[tag=DungeonPlay_36] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"古代の鉄塊","color":"gray"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/thirtysix_dungeon/boss/boss1"}}
execute if score $36_Difficulty Temporary matches 2 run give @a[tag=DungeonPlay_36] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"古代の鉄塊","color":"gray"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/thirtysix_dungeon/boss/boss2"}}

execute in mikatanserver:dungeon positioned 1353 251 -1840 run fill ~ ~ ~ ~60 ~4 ~60 air replace #anvil

execute as @a[tag=DungeonPlay_36] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_36] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_36] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:thirtysixboss_bar
scoreboard players add @a[tag=DungeonPlay_36] DungeonClear_Num 3
execute as @a[tag=DungeonPlay_36] run function mikatanserver:adddim/dungeonmap_one/atks_xp
tag @a[tag=DungeonPlay_36] remove CountLeader
tag @a[tag=DungeonPlay_36] remove DungeonPlay
tag @a[tag=DungeonPlay_36] remove BossBattle36
tag @a[tag=DungeonPlay_36] add Return_Dun_36
tag @a[tag=DungeonPlay_36] remove DungeonPlay_36
scoreboard players set $36 dungeon_play_now 0
execute if score $36_Difficulty Temporary matches 0 run scoreboard players add $36_0_Clear ClearPer 1
execute if score $36_Difficulty Temporary matches 1 run scoreboard players add $36_1_Clear ClearPer 1
execute if score $36_Difficulty Temporary matches 2 run scoreboard players add $36_2_Clear ClearPer 1
scoreboard objectives remove ThirtysixDunDeath
kill @e[tag=ThirtysixDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ThirtysixDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/boss/clearboss_tp 100t