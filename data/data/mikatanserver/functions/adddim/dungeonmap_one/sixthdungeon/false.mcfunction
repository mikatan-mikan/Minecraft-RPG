gamerule keepInventory true
bossbar remove minecraft:sixthboss_bar
effect clear @a[tag=DungeonPlay_6] speed
tellraw @a[tag=DungeonPlay_6] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_6]
kill @e[tag=SixDunArmor]
kill @e[tag=SixthDunNowP]
scoreboard objectives remove TrollSixDunSkill
scoreboard objectives remove SixBossSkill
scoreboard objectives remove TrollArmorCT
scoreboard objectives remove SixDunBackS
scoreboard objectives remove PheseManeger_6
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=SixDunMob]
scoreboard objectives remove SixthDunDeath
gamemode survival @a[tag=DungeonPlay_6]
tag @a[tag=DungeonPlay_6] remove CountLeader
tag @a[tag=DungeonPlay_6] remove DungeonPlay
tag @a[tag=DungeonPlay_6] remove BossBattle6
tag @a[tag=DungeonPlay_6] remove DungeonPlay_6
schedule function mikatanserver:main/keepinventoryfalse 10s