gamerule keepInventory true
scoreboard objectives remove ThirtyfiveDSkillTimer35
bossbar remove minecraft:thirtyfiveboss_bar
tellraw @a[tag=DungeonPlay_35] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_35]
kill @e[tag=ThirtyfiveDunArmor]
kill @e[tag=ThirtyfiveDunNowP]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ThirtyfiveDunMob]
scoreboard objectives remove ThirtyfiveDunDeath
gamemode survival @a[tag=DungeonPlay_35]
tag @a[tag=DungeonPlay_35] remove CountLeader
tag @a[tag=DungeonPlay_35] remove DungeonPlay
tag @a[tag=DungeonPlay_35] remove BossBattle35
tag @a[tag=DungeonPlay_35] remove DungeonPlay_35
scoreboard players set $35 dungeon_play_now 0
schedule function mikatanserver:main/keepinventoryfalse 10s