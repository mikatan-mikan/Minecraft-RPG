bossbar remove minecraft:tenthboss_bar
give @a[tag=DungeonPlay_10] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/tenth_dungeon/boss/boss"}}
#execute as @a[tag=DungeonPlay_10] if entity @s[nbt={SelectedItem:{tag:{dancing:[1]}}}] run give @s minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/tenth_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_10] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_10] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_10] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:tenthboss_bar
gamerule keepInventory false
tag @a[tag=DungeonPlay_10] remove CountLeader
tag @a[tag=DungeonPlay_10] remove DungeonPlay
tag @a[tag=DungeonPlay_10] remove BossBattle10
scoreboard objectives remove TenthDunDeath
scoreboard objectives remove TenBossSkill
scoreboard objectives remove Wind_Count
scoreboard objectives remove Wind_Rot_Count
kill @e[tag=TenDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item]
execute in mikatanserver:dungeon run kill @e[tag=TenDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/tenthdungeon/boss/clearboss_tp 100t