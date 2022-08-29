bossbar remove minecraft:thirdboss_bar
give @a[tag=DungeonPlay_3] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/third_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_6] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_6] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_3] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:thirdboss_bar
scoreboard players add @a[tag=DungeonPlay_3] DungeonClear_Num 1
execute as @a[tag=DungeonPlay_3] run function mikatanserver:adddim/dungeonmap_one/atks_xp
tag @a[tag=DungeonPlay_3] remove CountLeader
tag @a[tag=DungeonPlay_3] remove DungeonPlay
tag @a[tag=DungeonPlay_3] remove BossBattle3
scoreboard objectives remove ThirdDunDeath
kill @e[tag=ThiDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item]
execute in mikatanserver:dungeon run kill @e[tag=ThiDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/thirddungeon/boss/clearboss_tp 100t