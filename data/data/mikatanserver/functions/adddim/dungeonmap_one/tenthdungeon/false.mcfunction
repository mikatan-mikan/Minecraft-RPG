gamerule keepInventory true
bossbar remove minecraft:tenthboss_bar
tellraw @a[tag=DungeonPlay_10] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_10]
kill @e[tag=TenDunArmor]
kill @e[tag=TenDunNowP]
scoreboard objectives remove TenBossSkill2
scoreboard objectives remove TenBossSkill
scoreboard objectives remove Wind_Count
scoreboard objectives remove Wind_Rot_Count
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TenDunMob]
scoreboard objectives remove TenthDunDeath
gamemode survival @a[tag=DungeonPlay_10]
tag @a[tag=DungeonPlay_10] remove CountLeader
tag @a[tag=DungeonPlay_10] remove DungeonPlay
tag @a[tag=DungeonPlay_10] remove BossBattle10
tag @a[tag=DungeonPlay_10] remove DungeonPlay_10
schedule function mikatanserver:main/keepinventoryfalse 10s