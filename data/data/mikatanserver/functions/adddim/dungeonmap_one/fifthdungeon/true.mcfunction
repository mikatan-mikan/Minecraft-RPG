bossbar remove minecraft:fifthboss_bar
give @a[tag=DungeonPlay_5] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/fifth_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_5] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_5] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_5] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:fifthboss_bar
scoreboard players add @a[tag=DungeonPlay_5] DungeonClear_Num 1
tag @a[tag=DungeonPlay_5] remove CountLeader
tag @a[tag=DungeonPlay_5] remove DungeonPlay
tag @a[tag=DungeonPlay_5] remove BossBattle5
scoreboard objectives remove FifthDunDeath
scoreboard objectives remove FifBossSkill
scoreboard objectives remove TrollFifDunSkill
scoreboard objectives remove TrollArmorCT
scoreboard objectives remove FifDunBackS 
kill @e[tag=FifDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item]
execute in mikatanserver:dungeon run kill @e[tag=FifDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/fifthdungeon/boss/clearboss_tp 100t