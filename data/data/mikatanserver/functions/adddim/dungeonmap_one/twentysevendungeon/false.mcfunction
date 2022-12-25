gamerule keepInventory true
scoreboard objectives remove TwentysevenDSkillTimer27
bossbar remove minecraft:twentysevenboss_bar
tellraw @a[tag=DungeonPlay_27] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_27]
kill @e[tag=TwentysevenDunArmor]
kill @e[tag=TwentysevenDunNowP]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentysevenDunMob]
scoreboard objectives remove TwentysevenDunDeath
gamemode survival @a[tag=DungeonPlay_27]
tag @a[tag=DungeonPlay_27] remove CountLeader
tag @a[tag=DungeonPlay_27] remove DungeonPlay
tag @a[tag=DungeonPlay_27] remove BossBattle27
tag @a[tag=DungeonPlay_27] remove DungeonPlay_27
scoreboard players set $27 dungeon_play_now 0
schedule function mikatanserver:main/keepinventoryfalse 10s