bossbar remove minecraft:fourthboss_bar
advancement grant @a[tag=DungeonPlay_4] only mikatanserver:tp/dungeon_clear/fourth
give @a[tag=DungeonPlay_4] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/fourth_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_6] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_6] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_4] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:fourthboss_bar
scoreboard players add @a[tag=DungeonPlay_4] DungeonClear_Num 1
execute as @a[tag=DungeonPlay_4] run function mikatanserver:adddim/dungeonmap_one/atks_xp
tag @a[tag=DungeonPlay_4] remove CountLeader
tag @a[tag=DungeonPlay_4] remove DungeonPlay
tag @a[tag=DungeonPlay_4] remove BossBattle4
scoreboard objectives remove FourthDunDeath
scoreboard objectives remove FourBossSkill
kill @e[tag=FourDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item]
execute in mikatanserver:dungeon run kill @e[tag=FouDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/fourthdungeon/boss/clearboss_tp 100t