bossbar remove minecraft:thirtytwoboss_bar

# advancement grant @a[tag=DungeonPlay_32] only mikatanserver:tp/dungeon_clear/thirtytwo
scoreboard objectives remove ThirtytwoDSkillTimer1

execute if score $32_Difficulty Temporary matches 0 run give @a[tag=DungeonPlay_32] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"反逆の新緑","color":"green"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/thirtytwo_dungeon/boss/boss0"}}
execute if score $32_Difficulty Temporary matches 1 run give @a[tag=DungeonPlay_32] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"反逆の新緑","color":"green"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/thirtytwo_dungeon/boss/boss1"}}
execute if score $32_Difficulty Temporary matches 2 run give @a[tag=DungeonPlay_32] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"反逆の新緑","color":"green"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/thirtytwo_dungeon/boss/boss2"}}

execute positioned 1624.0 203 -464.0 run tp @e[dx=60,dz=60,dy=100,type=slime] ~ -128 ~
execute as @a[tag=DungeonPlay_32] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_32] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_32] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:thirtytwoboss_bar
scoreboard players add @a[tag=DungeonPlay_32] DungeonClear_Num 3
execute as @a[tag=DungeonPlay_32] run function mikatanserver:adddim/dungeonmap_one/atks_xp
tag @a[tag=DungeonPlay_32] remove CountLeader
tag @a[tag=DungeonPlay_32] remove DungeonPlay
tag @a[tag=DungeonPlay_32] remove BossBattle32
tag @a[tag=DungeonPlay_32] add Return_Dun_32
tag @a[tag=DungeonPlay_32] remove DungeonPlay_32
scoreboard players set $32 dungeon_play_now 0
scoreboard objectives remove ThirtytwoDunDeath
kill @e[tag=ThirtytwoDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ThirtytwoDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/boss/clearboss_tp 100t