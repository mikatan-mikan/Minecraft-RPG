bossbar remove minecraft:eigthboss_bar
advancement grant @a[tag=DungeonPlay_8] only mikatanserver:tp/dungeon_clear/eigth
give @a[tag=DungeonPlay_8] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/eigth_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_8] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_8] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_8] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:eigthboss_bar
scoreboard players add @a[tag=DungeonPlay_8] DungeonClear_Num 3
execute as @a[tag=DungeonPlay_8] run function mikatanserver:adddim/dungeonmap_one/atks_xp
tag @a[tag=DungeonPlay_8] remove CountLeader
tag @a[tag=DungeonPlay_8] remove DungeonPlay
tag @a[tag=DungeonPlay_8] remove BossBattle8
scoreboard players set $8 dungeon_play_now 0
scoreboard objectives remove EigthDunDeath
scoreboard objectives remove EigBossSkill
kill @e[tag=EigDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=EigDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/eigthdungeon/boss/clearboss_tp 100t