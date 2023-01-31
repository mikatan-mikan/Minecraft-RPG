bossbar remove minecraft:tenthboss_bar
give @a[tag=DungeonPlay_10] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"<<波動>>","color":"gold"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/tenth_dungeon/boss/boss"}}
#execute as @a[tag=DungeonPlay_10] if entity @s[nbt={SelectedItem:{tag:{dancing:[1]}}}] run give @s minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/tenth_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_10] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_10] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_10] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:tenthboss_bar
scoreboard players add @a[tag=DungeonPlay_10] DungeonClear_Num 5
execute as @a[tag=DungeonPlay_10] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
tag @a[tag=DungeonPlay_10] remove CountLeader
tag @a[tag=DungeonPlay_10] remove DungeonPlay
tag @a[tag=DungeonPlay_10] remove BossBattle10
tag @a[tag=DungeonPlay_10] add Return_Dun_10
scoreboard players set $10 dungeon_play_now 0
scoreboard objectives remove TenthDunDeath
scoreboard objectives remove TenBossSkill
kill @e[tag=TenDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TenDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/tenthdungeon/boss/clearboss_tp 100t