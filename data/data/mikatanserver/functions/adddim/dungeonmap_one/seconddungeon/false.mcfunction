gamerule keepInventory true
scoreboard objectives remove SecDSkillTimer1
bossbar remove minecraft:secondboss_bar
tellraw @a[tag=DungeonPlay_2] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_2]
kill @e[tag=SecDunArmor]
kill @e[tag=SecondDunNowP]
execute in mikatanserver:dungeon run kill @e[type=item]
execute in mikatanserver:dungeon run kill @e[tag=SecDunMob]
scoreboard objectives remove SecondDunDeath
gamemode survival @a[tag=DungeonPlay_2]
tag @a[tag=DungeonPlay_2] remove CountLeader
tag @a[tag=DungeonPlay_2] remove DungeonPlay
tag @a[tag=DungeonPlay_2] remove BossBattle2
tag @a[tag=DungeonPlay_2] remove DungeonPlay_2
schedule function mikatanserver:main/keepinventoryfalse 10s