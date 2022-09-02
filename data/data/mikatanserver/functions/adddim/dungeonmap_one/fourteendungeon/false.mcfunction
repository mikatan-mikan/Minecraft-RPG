gamerule keepInventory true
bossbar remove minecraft:fourteenboss_bar
tellraw @a[tag=DungeonPlay_14] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_14]
kill @e[tag=FourteenDunArmor]
kill @e[tag=FourteenDunNowP]
scoreboard objectives remove FourteenBossSkill2
scoreboard objectives remove FourteenBossSkill
scoreboard objectives remove 14_boss_hp_checker
execute in mikatanserver:dungeon run kill @e[type=item]
execute in mikatanserver:dungeon run kill @e[tag=FourteenDunMob]
scoreboard objectives remove FourteenDunDeath
gamemode survival @a[tag=DungeonPlay_14]
tag @a[tag=DungeonPlay_14] remove CountLeader
tag @a[tag=DungeonPlay_14] remove DungeonPlay
tag @a[tag=DungeonPlay_14] remove BossBattle14
tag @a[tag=DungeonPlay_14] remove DungeonPlay_14
schedule function mikatanserver:main/keepinventoryfalse 10s