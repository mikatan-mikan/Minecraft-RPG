gamerule keepInventory true
scoreboard objectives remove ThirtythreeDSkillTimer33
bossbar remove minecraft:thirtythreeboss_bar
tellraw @a[tag=DungeonPlay_33] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_33]
kill @e[tag=ThirtythreeDunArmor]
kill @e[tag=ThirtythreeDunNowP]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ThirtythreeDunMob]
scoreboard objectives remove ThirtythreeDunDeath
gamemode survival @a[tag=DungeonPlay_33]
tag @a[tag=DungeonPlay_33] remove CountLeader
tag @a[tag=DungeonPlay_33] remove DungeonPlay
tag @a[tag=DungeonPlay_33] remove BossBattle33
tag @a[tag=DungeonPlay_33] remove DungeonPlay_33
scoreboard players set $33 dungeon_play_now 0
schedule function mikatanserver:main/keepinventoryfalse 10s