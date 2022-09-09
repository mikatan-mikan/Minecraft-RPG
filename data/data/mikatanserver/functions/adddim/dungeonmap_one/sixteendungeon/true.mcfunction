bossbar remove minecraft:sixteenboss_bar
advancement grant @a[tag=DungeonPlay_16] only mikatanserver:tp/dungeon_clear/sixteen
give @a[tag=DungeonPlay_16] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/sixteen_dungeon/boss/boss"}}
#execute as @a[tag=DungeonPlay_11] if entity @s[nbt={SelectedItem:{tag:{dancing:[1]}}}] run give @s minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/Sixteen_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_16] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_16] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_16] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,110,0)へTPします","color": "yellow"}]
bossbar remove minecraft:sixteenboss_bar
scoreboard players add @a[tag=DungeonPlay_16] DungeonClear_Num 5
execute as @a[tag=DungeonPlay_16] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
tag @a[tag=DungeonPlay_16] remove CountLeader
tag @a[tag=DungeonPlay_16] remove DungeonPlay
tag @a[tag=DungeonPlay_16] remove BossBattle16
scoreboard objectives remove SixteenDunDeath
scoreboard objectives remove SixteenBossSkill5
scoreboard objectives remove SixteenBossSkill4
scoreboard objectives remove SixteenBossSkill3
scoreboard objectives remove SixteenBossSkill2
scoreboard objectives remove SixteenBossSkill
scoreboard objectives remove BossMoveCnt_16
kill @e[tag=SixteenDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=SixteenDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/clearboss_tp 100t