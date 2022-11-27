gamerule keepInventory true
bossbar remove minecraft:twentythreeboss_bar
tellraw @a[tag=DungeonPlay_23] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_23]
kill @e[tag=TwentythreeDunArmor]
kill @e[tag=TwentythreedDunNowP]
scoreboard objectives remove CometTimer
scoreboard objectives remove TwentythreeBossSkill
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentythreeDunMob]
scoreboard objectives remove TwentythreeDunDeath
gamemode survival @a[tag=DungeonPlay_23]
tag @a[tag=DungeonPlay_23] remove CountLeader
tag @a[tag=DungeonPlay_23] remove DungeonPlay
tag @a[tag=DungeonPlay_23] remove BossBattle23
tag @a[tag=DungeonPlay_23] remove DungeonPlay_23
scoreboard players set $23 dungeon_play_now 0
schedule function mikatanserver:main/keepinventoryfalse 10s