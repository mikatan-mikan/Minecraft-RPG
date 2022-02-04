gamerule keepInventory true
bossbar remove minecraft:ninethboss_bar
tellraw @a[tag=DungeonPlay_9] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_9]
kill @e[tag=NineDunArmor]
kill @e[tag=NineDunNowP]
scoreboard objectives remove NineBossSkill2
scoreboard objectives remove NineBossSkill
scoreboard objectives remove Wind_Count
scoreboard objectives remove Wind_Rot_Count
execute in mikatanserver:dungeon run kill @e[type=item]
execute in mikatanserver:dungeon run kill @e[tag=NineDunMob]
scoreboard objectives remove NinethDunDeath
gamemode survival @a[tag=DungeonPlay_9]
tag @a[tag=DungeonPlay_9] remove CountLeader
tag @a[tag=DungeonPlay_9] remove DungeonPlay
tag @a[tag=DungeonPlay_9] remove BossBattle9
tag @a[tag=DungeonPlay_9] remove DungeonPlay_9
schedule function mikatanserver:main/keepinventoryfalse 10s