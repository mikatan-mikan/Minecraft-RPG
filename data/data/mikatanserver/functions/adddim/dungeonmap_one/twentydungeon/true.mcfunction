bossbar remove minecraft:twentyboss_bar
advancement grant @a[tag=DungeonPlay_20] only mikatanserver:tp/dungeon_clear/twenty
give @a[tag=DungeonPlay_20] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/twenty_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_20] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_20] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_20] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:twentyboss_bar
scoreboard players add @a[tag=DungeonPlay_20] DungeonClear_Num 15
execute as @a[tag=DungeonPlay_20] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
tag @a[tag=DungeonPlay_20] remove CountLeader
tag @a[tag=DungeonPlay_20] remove DungeonPlay
tag @a[tag=DungeonPlay_20] remove BossBattle20
tag @a[tag=DungeonPlay_20] add Return_Dun_20
tag @a[tag=DungeonPlay_20] remove DungeonPlay_20
scoreboard objectives remove TwentyDunDeath
scoreboard objectives remove TwentyBossSkill
scoreboard objectives remove TwentyBossSkill2

scoreboard players set $20 dungeon_play_now 0
kill @e[tag=TwentyDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentyDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/twentydungeon/boss/clearboss_tp 100t