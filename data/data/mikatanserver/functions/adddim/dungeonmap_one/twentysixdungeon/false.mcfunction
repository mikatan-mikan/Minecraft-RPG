gamerule keepInventory true
bossbar remove minecraft:twentysixboss_bar
execute in mikatanserver:dungeon run clone 3099 30 2066 3129 60 2096 3033 30 2033
tellraw @a[tag=DungeonPlay_26] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
tag @a remove DungeonCaller26
kill @a[tag=DungeonPlay_26]
kill @e[tag=TwentysixDunArmor]
kill @e[tag=TwentysixDunNowP]
scoreboard objectives remove TwentysixBossSkill2
scoreboard objectives remove TwentysixBossSkill
scoreboard players set $26 dungeon_play_now 0
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentysixDunMob]
scoreboard objectives remove TwentysixDunDeath
gamemode survival @a[tag=DungeonPlay_26]
tag @a[tag=DungeonPlay_26] remove CountLeader
tag @a[tag=DungeonPlay_26] remove DungeonPlay
tag @a[tag=DungeonPlay_26] remove BossBattle26
tag @a[tag=DungeonPlay_26] remove DungeonPlay_26
schedule function mikatanserver:main/keepinventoryfalse 10s