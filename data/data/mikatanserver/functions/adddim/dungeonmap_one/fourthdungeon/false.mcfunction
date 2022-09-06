gamerule keepInventory true
bossbar remove minecraft:fourthboss_bar
tellraw @a[tag=DungeonPlay_4] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_4]
kill @e[tag=FouDunArmor]
kill @e[tag=FourdDunNowP]
scoreboard objectives remove CometTimer
scoreboard objectives remove FourBossSkill
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=FouDunMob]
scoreboard objectives remove FourthDunDeath
gamemode survival @a[tag=DungeonPlay_4]
tag @a[tag=DungeonPlay_4] remove CountLeader
tag @a[tag=DungeonPlay_4] remove DungeonPlay
tag @a[tag=DungeonPlay_4] remove BossBattle4
tag @a[tag=DungeonPlay_4] remove DungeonPlay_4
schedule function mikatanserver:main/keepinventoryfalse 10s