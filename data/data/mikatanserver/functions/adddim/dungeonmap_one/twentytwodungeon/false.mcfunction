gamerule keepInventory true
bossbar remove minecraft:twentytwoboss_bar
tellraw @a[tag=DungeonPlay_22] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_22]
kill @e[tag=TwentytwoDunArmor]
kill @e[tag=TwentytwoDunNowP]
scoreboard objectives remove TwentytwoBossSkill2
scoreboard objectives remove TwentytwoBossSkill
scoreboard players set $22 dungeon_play_now 0
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentytwoDunMob]
scoreboard objectives remove TwentytwoDunDeath
gamemode survival @a[tag=DungeonPlay_22]
tag @a[tag=DungeonPlay_22] remove CountLeader
tag @a[tag=DungeonPlay_22] remove DungeonPlay
tag @a[tag=DungeonPlay_22] remove BossBattle22
tag @a[tag=DungeonPlay_22] remove DungeonPlay_22
schedule function mikatanserver:main/keepinventoryfalse 10s