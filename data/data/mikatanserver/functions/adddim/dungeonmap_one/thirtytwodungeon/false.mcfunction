gamerule keepInventory true
scoreboard objectives remove ThirtytwoDSkillTimer32
bossbar remove minecraft:thirtytwoboss_bar
tag @e remove ThirtytwoDunBoss
execute positioned 1624.0 203 -464.0 run tp @e[dx=60,dz=60,dy=100,type=slime] ~ -128 ~
tellraw @a[tag=DungeonPlay_32] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_32]
kill @e[tag=ThirtytwoDunArmor]
kill @e[tag=ThirtytwoDunNowP]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ThirtytwoDunMob]
scoreboard objectives remove ThirtytwoDunDeath
gamemode survival @a[tag=DungeonPlay_32]
tag @a[tag=DungeonPlay_32] remove CountLeader
tag @a[tag=DungeonPlay_32] remove DungeonPlay
tag @a[tag=DungeonPlay_32] remove BossBattle32
tag @a[tag=DungeonPlay_32] remove DungeonPlay_32
scoreboard players set $32 dungeon_play_now 0
schedule function mikatanserver:main/keepinventoryfalse 10s