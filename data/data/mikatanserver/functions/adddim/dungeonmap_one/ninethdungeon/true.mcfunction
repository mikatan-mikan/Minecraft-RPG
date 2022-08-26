bossbar remove minecraft:ninethboss_bar
advancement grant @a[tag=DungeonPlay_9] only mikatanserver:tp/dungeon_clear/nineth
give @a[tag=DungeonPlay_9] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/nineth_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_9] if entity @s[nbt={SelectedItem:{tag:{dancing:[1]}}}] run give @s minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/nineth_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_9] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_9] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_9] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:ninethboss_bar
scoreboard players add @a[tag=DungeonPlay_9] DungeonClear_Num 1
gamerule keepInventory false
tag @a[tag=DungeonPlay_9] remove CountLeader
tag @a[tag=DungeonPlay_9] remove DungeonPlay
tag @a[tag=DungeonPlay_9] remove BossBattle9
scoreboard objectives remove NinethDunDeath
scoreboard objectives remove NineBossSkill
scoreboard objectives remove Wind_Count
scoreboard objectives remove Wind_Rot_Count
kill @e[tag=NineDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item]
execute in mikatanserver:dungeon run kill @e[tag=NineDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/clearboss_tp 100t