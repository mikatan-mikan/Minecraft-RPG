bossbar remove minecraft:seventeenboss_bar
advancement grant @a[tag=DungeonPlay_17] only mikatanserver:tp/dungeon_clear/seventeen
give @a[tag=DungeonPlay_17] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/seventeen_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_17] if entity @s[nbt={SelectedItem:{tag:{dancing:[1]}}}] run give @s minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/seventeen_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_17] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_17] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_17] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:seventeenboss_bar
scoreboard players add @a[tag=DungeonPlay_17] DungeonClear_Num 7
execute as @a[tag=DungeonPlay_17] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
tag @a[tag=DungeonPlay_17] remove CountLeader
tag @a[tag=DungeonPlay_17] remove DungeonPlay
tag @a[tag=DungeonPlay_17] remove BossBattle17
tag @a[tag=DungeonPlay_17] add Return_Dun_17
scoreboard objectives remove SeventeenDunDeath
scoreboard objectives remove SeventeenBossSkill
scoreboard players set $17 dungeon_play_now 0
kill @e[tag=SeventeenDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=SeventeenDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/clearboss_tp 100t