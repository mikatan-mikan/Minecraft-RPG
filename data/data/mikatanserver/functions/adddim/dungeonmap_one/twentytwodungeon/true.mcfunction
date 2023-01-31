bossbar remove minecraft:twentytwoboss_bar
give @a[tag=DungeonPlay_22] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"波動","color":"red"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentytwo_dungeon/boss/boss"}}
#execute as @a[tag=DungeonPlay_22] if entity @s[nbt={SelectedItem:{tag:{dancing:[1]}}}] run give @s minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentytwo_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_22] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_22] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_22] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:twentytwoboss_bar
scoreboard players add @a[tag=DungeonPlay_22] DungeonClear_Num 15
execute as @a[tag=DungeonPlay_22] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
tag @a[tag=DungeonPlay_22] remove CountLeader
tag @a[tag=DungeonPlay_22] remove DungeonPlay
tag @a[tag=DungeonPlay_22] remove BossBattle22
tag @a[tag=DungeonPlay_22] add Return_Dun_22
scoreboard players set $22 dungeon_play_now 0
scoreboard objectives remove TwentytwoDunDeath
scoreboard objectives remove TwentytwoBossSkill
scoreboard objectives remove TwentytwoBossSkill2
kill @e[tag=TwentytwoDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentytwoDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/clearboss_tp 220t