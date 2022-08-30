gamerule keepInventory true
bossbar remove minecraft:thirteenboss_bar
tellraw @a[tag=DungeonPlay_13] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_13]
kill @e[tag=ThirteenDunArmor]
kill @e[tag=ThirteenDunNowP]
scoreboard objectives remove ThirteenBossSkill2
scoreboard objectives remove ThirteenBossSkill
scoreboard objectives remove 13_NextMobCheckTimer
scoreboard objectives remove 13_TowerFloor
scoreboard objectives remove 13_TowerNowMobCnt
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ThirteenDunMob]
scoreboard objectives remove ThirteenDunDeath
gamemode survival @a[tag=DungeonPlay_13]
tag @a[tag=DungeonPlay_13] remove Dun13_Tower
tag @a[tag=DungeonPlay_13] remove CountLeader
tag @a[tag=DungeonPlay_13] remove DungeonPlay
tag @a[tag=DungeonPlay_13] remove BossBattle13
tag @a[tag=DungeonPlay_13] remove BossBattle13_2
tag @a[tag=DungeonPlay_13] remove DungeonPlay_13