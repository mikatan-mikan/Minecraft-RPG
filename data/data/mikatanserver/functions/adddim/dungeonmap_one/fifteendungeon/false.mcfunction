gamerule keepInventory true
bossbar remove minecraft:fifteenboss_bar
tellraw @a[tag=DungeonPlay_15] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_15]
kill @e[tag=FifteenDunArmor]
kill @e[tag=FifteenDunNowP]
scoreboard objectives remove FifteenBossSkill2
scoreboard objectives remove FifteenBossSkill
scoreboard objectives remove 15_boss_hp_checker
execute in mikatanserver:dungeon run kill @e[type=item]
execute in mikatanserver:dungeon run kill @e[tag=FifteenDunMob]
scoreboard objectives remove FifteenDunDeath
gamemode survival @a[tag=DungeonPlay_15]
tag @a[tag=DungeonPlay_15] remove CountLeader
tag @a[tag=DungeonPlay_15] remove DungeonPlay
tag @a[tag=DungeonPlay_15] remove BossBattle15
tag @a[tag=DungeonPlay_15] remove DungeonPlay_15
schedule function mikatanserver:main/keepinventoryfalse 10s