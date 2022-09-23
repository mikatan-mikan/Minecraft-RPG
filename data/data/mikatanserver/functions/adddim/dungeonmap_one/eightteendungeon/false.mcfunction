gamerule keepInventory true
bossbar remove minecraft:eightteenboss_bar
tellraw @a[tag=DungeonPlay_18] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @e[tag=EightteenDunMob]
kill @a[tag=DungeonPlay_18]
kill @e[tag=EightteenDunArmor]
kill @e[tag=EightteenDunNowP]
scoreboard objectives remove EightteenBossSkill2
scoreboard objectives remove EightteenBossSkill
scoreboard players reset $18_boss_hp_venus boss_hp_checker
scoreboard players reset $18_boss_hp_god boss_hp_checker
scoreboard players reset $18_boss_hp_venus TMP
scoreboard players reset $18_boss_hp_god TMP
scoreboard players reset $18 BossHP
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=EightteenDunMob]
scoreboard objectives remove EightteenDunDeath
gamemode survival @a[tag=DungeonPlay_18]
tag @a[tag=DungeonPlay_18] remove CountLeader
tag @a[tag=DungeonPlay_18] remove DungeonPlay
tag @a[tag=DungeonPlay_18] remove BossBattle18
tag @a[tag=DungeonPlay_18] remove DungeonPlay_18
scoreboard players set $18 dungeon_play_now 0