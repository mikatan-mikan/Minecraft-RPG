gamerule keepInventory true
scoreboard objectives remove TwentynineDSkillTimer29
bossbar remove minecraft:twentynineboss_bar
tellraw @a[tag=DungeonPlay_29] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_29]
kill @e[tag=TwentynineDunArmor]
kill @e[tag=TwentynineDunNowP]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentynineDunMob]
scoreboard objectives remove TwentynineDunDeath
gamemode survival @a[tag=DungeonPlay_29]
tag @a[tag=DungeonPlay_29] remove CountLeader
tag @a[tag=DungeonPlay_29] remove DungeonPlay
tag @a[tag=DungeonPlay_29] remove BossBattle29
tag @a[tag=DungeonPlay_29] remove DungeonPlay_29
scoreboard players set $29 dungeon_play_now 0
schedule function mikatanserver:main/keepinventoryfalse 10s