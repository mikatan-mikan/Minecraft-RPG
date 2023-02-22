bossbar remove minecraft:thirtyoneboss_bar

# advancement grant @a[tag=DungeonPlay_31] only mikatanserver:tp/dungeon_clear/thirtyone
scoreboard objectives remove ThirtyoneDSkillTimer1

execute as @a[tag=DungeonPlay_31] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_31] ~ ~ ~ 2 0
give @a[tag=DungeonPlay_31] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"マグマキューブ大量発生","color":"red"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/thirtyone_dungeon/boss/boss"}}
tellraw @a[tag=DungeonPlay_31] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:thirtyoneboss_bar
scoreboard players add @a[tag=DungeonPlay_31] DungeonClear_Num 3
execute as @a[tag=DungeonPlay_31] run function mikatanserver:adddim/dungeonmap_one/atks_xp
tag @a[tag=DungeonPlay_31] remove CountLeader
tag @a[tag=DungeonPlay_31] remove DungeonPlay
tag @a[tag=DungeonPlay_31] remove BossBattle31
tag @a[tag=DungeonPlay_31] add Return_Dun_31
tag @a[tag=DungeonPlay_31] remove DungeonPlay_31
scoreboard players set $31 dungeon_play_now 0
scoreboard players add $31_Clear ClearPer 1
scoreboard objectives remove ThirtyoneDunDeath
kill @e[tag=ThirtyoneDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ThirtyoneDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/boss/clearboss_tp 100t