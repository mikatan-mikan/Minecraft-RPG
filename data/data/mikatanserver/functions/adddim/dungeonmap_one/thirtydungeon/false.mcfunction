gamerule keepInventory true
bossbar remove minecraft:thirtyboss_bar
execute in mikatanserver:dungeon run clone 3099 30 2066 3129 60 2096 3033 30 2033
tellraw @a[tag=DungeonPlay_30] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
tag @a remove DungeonCaller30
kill @a[tag=DungeonPlay_30]
kill @e[tag=ThirtyDunArmor]
kill @e[tag=ThirtyDunNowP]
scoreboard objectives remove ThirtyBossSkill2
scoreboard objectives remove ThirtyBossSkill
scoreboard players set $30 dungeon_play_now 0
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ThirtyDunMob]
scoreboard objectives remove ThirtyDunDeath
gamemode survival @a[tag=DungeonPlay_30]
tag @a[tag=DungeonPlay_30] remove CountLeader
tag @a[tag=DungeonPlay_30] remove DungeonPlay
tag @a[tag=DungeonPlay_30] remove BossBattle30
tag @a[tag=DungeonPlay_30] remove DungeonPlay_30
schedule function mikatanserver:main/keepinventoryfalse 10s