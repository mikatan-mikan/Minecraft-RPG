gamerule keepInventory true
scoreboard objectives remove ThirtyoneDSkillTimer31
bossbar remove minecraft:thirtyoneboss_bar
tellraw @a[tag=DungeonPlay_31] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_31]
kill @e[tag=ThirtyoneDunArmor]
kill @e[tag=ThirtyoneDunNowP]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ThirtyoneDunMob]
scoreboard objectives remove ThirtyoneDunDeath
gamemode survival @a[tag=DungeonPlay_31]
tag @a[tag=DungeonPlay_31] remove CountLeader
tag @a[tag=DungeonPlay_31] remove DungeonPlay
tag @a[tag=DungeonPlay_31] remove BossBattle31
tag @a[tag=DungeonPlay_31] remove DungeonPlay_31
scoreboard players set $31 dungeon_play_now 0
schedule function mikatanserver:main/keepinventoryfalse 10s