gamerule keepInventory true
bossbar remove minecraft:twelvethboss_bar
tellraw @a[tag=DungeonPlay_12] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"制限時間を超過しました","color": "gold"}]
kill @a[tag=DungeonPlay_12]
kill @e[tag=TwelveDunArmor]
kill @e[tag=TwelveDunNowP]
scoreboard objectives remove TwelveBossSkill3
scoreboard objectives remove TwelveBossSkill2
scoreboard objectives remove TwelveBossSkill
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwelveDunMob]
scoreboard objectives remove TwelvethDunDeath
scoreboard objectives remove BossMoveCnt
gamemode survival @a[tag=DungeonPlay_12]
tag @a[tag=DungeonPlay_12] remove CountLeader
tag @a[tag=DungeonPlay_12] remove DungeonPlay
tag @a[tag=DungeonPlay_12] remove BossBattle12
tag @a[tag=DungeonPlay_12] remove DungeonPlay_12
schedule function mikatanserver:main/keepinventoryfalse 10s