gamerule keepInventory true
bossbar remove minecraft:sevthboss_bar
tellraw @a[tag=DungeonPlay_7] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_7]
kill @e[tag=SevDunArmor]
kill @e[tag=SevthDunNowP]
scoreboard objectives remove TrollSevDunSkill
scoreboard objectives remove SevBossSkill
scoreboard objectives remove TrollArmorCT
scoreboard objectives remove SevDunBackS 
execute in mikatanserver:dungeon run kill @e[type=item]
execute in mikatanserver:dungeon run kill @e[tag=SevDunMob]
scoreboard objectives remove SevthDunDeath
gamemode survival @a[tag=DungeonPlay_7]
tag @a[tag=DungeonPlay_7] remove CountLeader
tag @a[tag=DungeonPlay_7] remove DungeonPlay
tag @a[tag=DungeonPlay_7] remove BossBattle7
tag @a[tag=DungeonPlay_7] remove DungeonPlay_7
schedule function mikatanserver:main/keepinventoryfalse 10s