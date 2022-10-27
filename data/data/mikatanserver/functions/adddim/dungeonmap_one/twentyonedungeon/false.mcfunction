gamerule keepInventory true
bossbar remove minecraft:twentyoneboss_bar
tellraw @a[tag=DungeonPlay_21] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_21]
kill @e[tag=TwentyoneDunArmor]
kill @e[tag=TwentyoneDunNowP]
scoreboard objectives remove TwentyoneBossSkill2
scoreboard objectives remove TwentyoneBossSkill
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentyoneDunMob]
scoreboard objectives remove TwentyoneDunDeath
gamemode survival @a[tag=DungeonPlay_21]
tag @a[tag=DungeonPlay_21] remove CountLeader
tag @a[tag=DungeonPlay_21] remove DungeonPlay
tag @a[tag=DungeonPlay_21] remove BossBattle21
tag @a[tag=DungeonPlay_21] remove DungeonPlay_21
scoreboard players set $21 dungeon_play_now 0