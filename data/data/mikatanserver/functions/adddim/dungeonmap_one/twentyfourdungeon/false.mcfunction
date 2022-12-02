gamerule keepInventory true
bossbar remove minecraft:twentyfourboss_bar
tellraw @a[tag=DungeonPlay_24] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_24]
kill @e[tag=TwentyfourDunArmor]
kill @e[tag=TwentyfourDunNowP]
scoreboard objectives remove TwentyfourBossSkill2
scoreboard objectives remove TwentyfourBossSkill
scoreboard objectives remove TwentyfourBossDush
scoreboard objectives remove TwentyfourBossWalk
scoreboard players set $24 dungeon_play_now 0
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentyfourDunMob]
scoreboard objectives remove TwentyfourDunDeath
gamemode survival @a[tag=DungeonPlay_24]
tag @a[tag=DungeonPlay_24] remove CountLeader
tag @a[tag=DungeonPlay_24] remove DungeonPlay
tag @a[tag=DungeonPlay_24] remove BossBattle24
tag @a[tag=DungeonPlay_24] remove DungeonPlay_24
schedule function mikatanserver:main/keepinventoryfalse 10s