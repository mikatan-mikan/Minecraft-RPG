gamerule keepInventory true
bossbar remove minecraft:seventeenboss_bar
tellraw @a[tag=DungeonPlay_17] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_17]
kill @e[tag=SeventeenDunArmor]
kill @e[tag=SeventeenDunNowP]
scoreboard objectives remove SeventeenBossSkill2
scoreboard objectives remove SeventeenBossSkill
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=SeventeenDunMob]
scoreboard objectives remove SeventeenDunDeath
gamemode survival @a[tag=DungeonPlay_17]
tag @a[tag=DungeonPlay_17] remove CountLeader
tag @a[tag=DungeonPlay_17] remove DungeonPlay
tag @a[tag=DungeonPlay_17] remove BossBattle17
tag @a[tag=DungeonPlay_17] remove DungeonPlay_17
scoreboard players set $17 dungeon_play_now 0