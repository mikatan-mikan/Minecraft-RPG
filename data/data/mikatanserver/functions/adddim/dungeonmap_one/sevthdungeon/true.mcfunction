bossbar remove minecraft:sevthboss_bar
give @a[tag=DungeonPlay_7] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/sevth_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_7] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_7] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_7] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:sevthboss_bar
scoreboard players add @a[tag=DungeonPlay_7] DungeonClear_Num 1
execute as @a[tag=DungeonPlay_7] run function mikatanserver:adddim/dungeonmap_one/atks_xp
tag @a[tag=DungeonPlay_7] remove CountLeader
tag @a[tag=DungeonPlay_7] remove DungeonPlay
tag @a[tag=DungeonPlay_7] remove BossBattle7
scoreboard players set $7 dungeon_play_now 0
scoreboard objectives remove SevthDunDeath
scoreboard objectives remove SevBossSkill
scoreboard objectives remove SevDunBackS 
kill @e[tag=SevDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=SevDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/sevthdungeon/boss/clearboss_tp 100t