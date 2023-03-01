gamerule keepInventory true
scoreboard objectives remove ThirtysixDSkillTimer36
bossbar remove minecraft:thirtysixboss_bar
tag @e remove ThirtysixDunBoss
execute in mikatanserver:dungeon positioned 1353 251 -1840 run fill ~ ~ ~ ~60 ~4 ~60 air replace #anvil
tellraw @a[tag=DungeonPlay_36] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_36]
kill @e[tag=ThirtysixDunArmor]
kill @e[tag=ThirtysixDunNowP]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ThirtysixDunMob]
scoreboard objectives remove ThirtysixDunDeath
gamemode survival @a[tag=DungeonPlay_36]
tag @a[tag=DungeonPlay_36] remove CountLeader
tag @a[tag=DungeonPlay_36] remove DungeonPlay
tag @a[tag=DungeonPlay_36] remove BossBattle36
tag @a[tag=DungeonPlay_36] remove DungeonPlay_36
scoreboard players set $36 dungeon_play_now 0
schedule function mikatanserver:main/keepinventoryfalse 10s