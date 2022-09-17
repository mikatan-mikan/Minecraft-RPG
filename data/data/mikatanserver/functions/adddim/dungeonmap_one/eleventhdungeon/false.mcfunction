gamerule keepInventory true
bossbar remove minecraft:eleventhboss_bar
tellraw @a[tag=DungeonPlay_11] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_11]
kill @e[tag=ElevenDunArmor]
kill @e[tag=ElevenDunNowP]
scoreboard objectives remove ElevenBossSkill2
scoreboard objectives remove ElevenBossSkill
scoreboard objectives remove Wind_Count
scoreboard objectives remove Wind_Rot_Count

scoreboard players set $11 dungeon_play_now 0
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ElevenDunMob]
scoreboard objectives remove EleventhDunDeath
gamemode survival @a[tag=DungeonPlay_11]
tag @a[tag=DungeonPlay_11] remove CountLeader
tag @a[tag=DungeonPlay_11] remove DungeonPlay
tag @a[tag=DungeonPlay_11] remove BossBattle11
tag @a[tag=DungeonPlay_11] remove DungeonPlay_11
schedule function mikatanserver:main/keepinventoryfalse 10s