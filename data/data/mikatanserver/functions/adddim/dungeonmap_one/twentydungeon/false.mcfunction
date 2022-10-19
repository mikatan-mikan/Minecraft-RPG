gamerule keepInventory true
bossbar remove minecraft:twentyboss_bar
tellraw @a[tag=DungeonPlay_20] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_20]
kill @e[tag=TwentyDunArmor]
kill @e[tag=TwentyDunNowP]
scoreboard objectives remove TwentyBossSkill2
scoreboard objectives remove TwentyBossSkill
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentyDunMob]
scoreboard objectives remove TwentyDunDeath
gamemode survival @a[tag=DungeonPlay_20]
tag @a[tag=DungeonPlay_20] remove CountLeader
tag @a[tag=DungeonPlay_20] remove DungeonPlay
tag @a[tag=DungeonPlay_20] remove BossBattle20
tag @a[tag=DungeonPlay_20] remove DungeonPlay_20
scoreboard players set $20 dungeon_play_now 0
schedule function mikatanserver:main/keepinventoryfalse 10s