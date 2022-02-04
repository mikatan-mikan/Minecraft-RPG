bossbar remove minecraft:firstboss_bar
give @a[tag=DungeonPlay_1] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/firstdungeon/atrus"}}
execute as @a[tag=DungeonPlay_6] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_6] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_1] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:firstboss_bar
tag @a[tag=DungeonPlay_1] remove CountLeader
tag @a[tag=DungeonPlay_1] remove DungeonPlay
tag @a[tag=DungeonPlay_1] remove BossBattle1
scoreboard objectives remove FirstDunDeath
kill @e[tag=FirDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item]
execute in mikatanserver:dungeon run kill @e[tag=FirDunMob]

schedule function mikatanserver:adddim/dungeonmap_one/firstdungeon/boss/clearboss_tp 100t