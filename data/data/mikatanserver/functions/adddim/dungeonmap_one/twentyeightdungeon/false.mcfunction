gamerule keepInventory true
scoreboard objectives remove TwentyeightDSkillTimer28
bossbar remove minecraft:twentyeightboss_bar
tellraw @a[tag=DungeonPlay_28] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_28]
kill @e[tag=TwentyeightDunArmor]
kill @e[tag=TwentyeightDunNowP]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentyeightDunMob]
scoreboard objectives remove TwentyeightDunDeath
gamemode survival @a[tag=DungeonPlay_28]
tag @a[tag=DungeonPlay_28] remove CountLeader
tag @a[tag=DungeonPlay_28] remove DungeonPlay
tag @a[tag=DungeonPlay_28] remove BossBattle28
tag @a[tag=DungeonPlay_28] remove DungeonPlay_28
scoreboard players set $28 dungeon_play_now 0
schedule function mikatanserver:main/keepinventoryfalse 10s