bossbar remove minecraft:twentyoneboss_bar
advancement grant @a[tag=DungeonPlay_21] only mikatanserver:tp/dungeon_clear/twentyone
give @a[tag=DungeonPlay_21] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"重力の操縦者","color":"red"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentyone_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_21] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_21] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_21] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:twentyoneboss_bar
scoreboard players add @a[tag=DungeonPlay_21] DungeonClear_Num 7
execute as @a[tag=DungeonPlay_21] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
tag @a[tag=DungeonPlay_21] remove CountLeader
tag @a[tag=DungeonPlay_21] remove DungeonPlay
tag @a[tag=DungeonPlay_21] remove BossBattle21
tag @a[tag=DungeonPlay_21] add Return_Dun_21
tag @a[tag=DungeonPlay_21] remove DungeonPlay_21
scoreboard objectives remove TwentyoneDunDeath
scoreboard objectives remove TwentyoneBossSkill
scoreboard objectives remove TwentyoneBossSkill2

scoreboard players set $21 dungeon_play_now 0
scoreboard players add $21_Clear ClearPer 1
kill @e[tag=TwentyoneDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentyoneDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/boss/clearboss_tp 100t