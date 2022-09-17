gamerule keepInventory true
bossbar remove minecraft:sixteenboss_bar
tellraw @a[tag=DungeonPlay_16] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_16]
kill @e[tag=SixteenDunArmor]
kill @e[tag=SixteenDunNowP]
scoreboard objectives remove SixteenBossSkill5
scoreboard objectives remove SixteenBossSkill4
scoreboard objectives remove SixteenBossSkill3
scoreboard objectives remove SixteenBossSkill2
scoreboard objectives remove SixteenBossSkill
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=SixteenDunMob]
scoreboard objectives remove SixteenDunDeath
scoreboard objectives remove BossMoveCnt_16
gamemode survival @a[tag=DungeonPlay_16]
tag @a[tag=DungeonPlay_16] remove CountLeader
tag @a[tag=DungeonPlay_16] remove DungeonPlay
tag @a[tag=DungeonPlay_16] remove BossBattle16
tag @a[tag=DungeonPlay_16] remove DungeonPlay_16
scoreboard players set $16 dungeon_play_now 0
schedule function mikatanserver:main/keepinventoryfalse 10s