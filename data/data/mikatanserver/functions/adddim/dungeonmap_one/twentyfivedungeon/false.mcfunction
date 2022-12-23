gamerule keepInventory true
bossbar remove minecraft:twentyfiveboss_bar
tellraw @a[tag=DungeonPlay_25] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_25]
kill @e[tag=TwentyfiveDunArmor]
kill @e[tag=TwentyfiveDunNowP]
scoreboard objectives remove TwentyfiveBossSkill2
scoreboard objectives remove TwentyfiveBossSkill
scoreboard objectives remove 25_boss_hp_checker
execute as @e[tag=25_EffectAr_Slime] at @s run tp ~ -129 ~
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentyfiveDunMob]
scoreboard objectives remove TwentyfiveDunDeath
gamemode survival @a[tag=DungeonPlay_25]
tag @a[tag=DungeonPlay_25] remove CountLeader
tag @a[tag=DungeonPlay_25] remove DungeonPlay
tag @a[tag=DungeonPlay_25] remove BossBattle25
tag @a[tag=DungeonPlay_25] remove DungeonPlay_25
scoreboard players set $25 dungeon_play_now 0
schedule function mikatanserver:main/keepinventoryfalse 10s