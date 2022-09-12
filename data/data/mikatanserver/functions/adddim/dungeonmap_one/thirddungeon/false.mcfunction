gamerule keepInventory true
bossbar remove minecraft:thirdboss_bar
tellraw @a[tag=DungeonPlay_3] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_3]
kill @e[tag=ThiDunArmor]
kill @e[tag=ThirdDunNowP]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ThiDunMob]
scoreboard objectives remove ThirdDunDeath
gamemode survival @a[tag=DungeonPlay_3]
tag @a[tag=DungeonPlay_3] remove CountLeader
tag @a[tag=DungeonPlay_3] remove DungeonPlay
tag @a[tag=DungeonPlay_3] remove BossBattle3
tag @a[tag=DungeonPlay_3] remove DungeonPlay_3
schedule function mikatanserver:main/keepinventoryfalse 10s