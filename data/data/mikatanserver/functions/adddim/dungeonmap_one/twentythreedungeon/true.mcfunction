bossbar remove minecraft:twentythreeboss_bar
advancement grant @a[tag=DungeonPlay_23] only mikatanserver:tp/dungeon_clear/twentythree
give @a[tag=DungeonPlay_23] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentythree_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_23] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_23] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_23] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:twentythreeboss_bar
scoreboard players add @a[tag=DungeonPlay_23] DungeonClear_Num 1
execute as @a[tag=DungeonPlay_23] run function mikatanserver:adddim/dungeonmap_one/atks_xp
tag @a[tag=DungeonPlay_23] remove CountLeader
tag @a[tag=DungeonPlay_23] remove DungeonPlay
tag @a[tag=DungeonPlay_23] remove BossBattle23
tag @a[tag=DungeonPlay_23] add Return_Dun_23
tag @a[tag=DungeonPlay_23] remove DungeonPlay_23
scoreboard players set $23 dungeon_play_now 0
scoreboard objectives remove TwentythreeDunDeath
scoreboard objectives remove TwentythreeBossSkill
kill @e[tag=TwentythreeDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentythreeDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/clearboss_tp 100t