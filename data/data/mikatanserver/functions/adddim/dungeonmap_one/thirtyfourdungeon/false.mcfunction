gamerule keepInventory true
bossbar remove minecraft:thirtyfourboss_bar
execute in mikatanserver:dungeon run clone 3499 34 2066 3129 60 2096 3433 34 2033
tellraw @a[tag=DungeonPlay_34] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
tag @a remove DungeonCaller34
kill @a[tag=DungeonPlay_34]
kill @e[tag=ThirtyfourDunArmor]
kill @e[tag=ThirtyfourDunNowP]
scoreboard objectives remove ThirtyfourBossSkill2
scoreboard objectives remove ThirtyfourBossSkill
scoreboard players set $34 dungeon_play_now 0
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ThirtyfourDunMob]
scoreboard objectives remove ThirtyfourDunDeath
gamemode survival @a[tag=DungeonPlay_34]
tag @a[tag=DungeonPlay_34] remove CountLeader
tag @a[tag=DungeonPlay_34] remove DungeonPlay
tag @a[tag=DungeonPlay_34] remove BossBattle34
tag @a[tag=DungeonPlay_34] remove DungeonPlay_34
schedule function mikatanserver:main/keepinventoryfalse 10s