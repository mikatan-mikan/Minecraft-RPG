gamerule keepInventory true
bossbar remove minecraft:firstboss_bar
tellraw @a[tag=DungeonPlay_1] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_1]
kill @e[tag=FirDunArmor]
kill @e[tag=FirstDunNowP]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=FirDunMob]
scoreboard objectives remove FirstDunDeath
gamemode survival @a[tag=DungeonPlay_1]
tag @a[tag=DungeonPlay_1] remove CountLeader
tag @a[tag=DungeonPlay_1] remove DungeonPlay
tag @a[tag=DungeonPlay_1] remove BossBattle1
tag @a[tag=DungeonPlay_1] remove DungeonPlay_1
schedule function mikatanserver:main/keepinventoryfalse 10s