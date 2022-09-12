gamerule keepInventory true
bossbar remove minecraft:eigthboss_bar
tellraw @a[tag=DungeonPlay_8] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_8]
kill @e[tag=EigDunArmor]
kill @e[tag=EigDunNowP]
scoreboard objectives remove CometTimer
scoreboard objectives remove EigBossSkill
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=EigDunMob]
scoreboard objectives remove EigthDunDeath
gamemode survival @a[tag=DungeonPlay_8]
tag @a[tag=DungeonPlay_8] remove CountLeader
tag @a[tag=DungeonPlay_8] remove DungeonPlay
tag @a[tag=DungeonPlay_8] remove BossBattle8
tag @a[tag=DungeonPlay_8] remove DungeonPlay_8
schedule function mikatanserver:main/keepinventoryfalse 10s