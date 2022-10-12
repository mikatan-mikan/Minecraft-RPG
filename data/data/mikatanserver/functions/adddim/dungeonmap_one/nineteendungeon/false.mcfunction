gamerule keepInventory true
bossbar remove minecraft:nineteenboss_bar
tellraw @a[tag=DungeonPlay_19] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_19]
kill @e[tag=NineteenDunArmor]
kill @e[tag=NineteenDunNowP]
scoreboard objectives remove NineteenBossSkill4
scoreboard objectives remove NineteenBossSkill3
scoreboard objectives remove NineteenBossSkill2
scoreboard objectives remove NineteenBossSkill
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=NineteenDunMob]
scoreboard objectives remove NineteenDunDeath
gamemode survival @a[tag=DungeonPlay_19]
tag @a[tag=DungeonPlay_19] remove CountLeader
tag @a[tag=DungeonPlay_19] remove DungeonPlay
tag @a[tag=DungeonPlay_19] remove BossBattle19
tag @a[tag=DungeonPlay_19] remove DungeonPlay_19
scoreboard players set $19 dungeon_play_now 0
schedule function mikatanserver:main/keepinventoryfalse 10s