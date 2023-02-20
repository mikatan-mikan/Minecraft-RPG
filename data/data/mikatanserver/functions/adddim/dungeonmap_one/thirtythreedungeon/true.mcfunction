bossbar remove minecraft:thirtythreeboss_bar

# advancement grant @a[tag=DungeonPlay_33] only mikatanserver:tp/dungeon_clear/thirtythree
scoreboard objectives remove ThirtythreeDSkillTimer1

execute if score $33_Difficulty Temporary matches 0 run give @a[tag=DungeonPlay_33] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"深海の支配者","color":"aqua"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/thirtythree_dungeon/boss/boss0"}}
execute if score $33_Difficulty Temporary matches 1 run give @a[tag=DungeonPlay_33] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"深海の支配者","color":"aqua"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/thirtythree_dungeon/boss/boss1"}}

execute as @a[tag=DungeonPlay_33] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_33] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_33] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:thirtythreeboss_bar
scoreboard players add @a[tag=DungeonPlay_33] DungeonClear_Num 3
execute as @a[tag=DungeonPlay_33] run function mikatanserver:adddim/dungeonmap_one/atks_xp
tag @a[tag=DungeonPlay_33] remove CountLeader
tag @a[tag=DungeonPlay_33] remove DungeonPlay
tag @a[tag=DungeonPlay_33] remove BossBattle33
tag @a[tag=DungeonPlay_33] add Return_Dun_33
tag @a[tag=DungeonPlay_33] remove DungeonPlay_33
scoreboard players set $33 dungeon_play_now 0
scoreboard objectives remove ThirtythreeDunDeath
kill @e[tag=ThirtythreeDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ThirtythreeDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/boss/clearboss_tp 100t