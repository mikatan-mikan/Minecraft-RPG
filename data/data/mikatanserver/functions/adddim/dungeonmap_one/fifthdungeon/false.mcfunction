gamerule keepInventory true
bossbar remove minecraft:fifthboss_bar
tellraw @a[tag=DungeonPlay_5] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_5]
kill @e[tag=FifDunArmor]
kill @e[tag=FifthDunNowP]
scoreboard objectives remove TrollFifDunSkill
scoreboard objectives remove FifBossSkill
scoreboard objectives remove TrollArmorCT
scoreboard objectives remove FifDunBackS 
execute in mikatanserver:dungeon run kill @e[type=item]
execute in mikatanserver:dungeon run kill @e[tag=FifDunMob]
scoreboard objectives remove FifthDunDeath
gamemode survival @a[tag=DungeonPlay_5]
tag @a[tag=DungeonPlay_5] remove CountLeader
tag @a[tag=DungeonPlay_5] remove DungeonPlay
tag @a[tag=DungeonPlay_5] remove BossBattle5
tag @a[tag=DungeonPlay_5] remove DungeonPlay_5
schedule function mikatanserver:main/keepinventoryfalse 10s