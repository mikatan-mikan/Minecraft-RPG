bossbar remove minecraft:fourteenboss_bar
give @a[tag=DungeonPlay_14] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/fourteen_dungeon/boss/boss"}}
#execute as @a[tag=DungeonPlay_14] if entity @s[nbt={SelectedItem:{tag:{dancing:[1]}}}] run give @s minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/fourteen_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_14] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_14] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_14] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,140,0)へTPします","color": "yellow"}]
bossbar remove minecraft:fourteenboss_bar
scoreboard players add @a[tag=DungeonPlay_14] DungeonClear_Num 5
execute as @a[tag=DungeonPlay_14] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
tag @a[tag=DungeonPlay_14] remove CountLeader
tag @a[tag=DungeonPlay_14] remove DungeonPlay
tag @a[tag=DungeonPlay_14] remove BossBattle14
scoreboard objectives remove FourteenDunDeath
scoreboard objectives remove FourteenBossSkill
scoreboard objectives remove Wind_Count
scoreboard objectives remove Wind_Rot_Count
scoreboard objectives remove 14_boss_hp_checker
kill @e[tag=FourteenDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item]
execute in mikatanserver:dungeon run kill @e[tag=FourteenDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/fourteendungeon/boss/clearboss_tp 100t