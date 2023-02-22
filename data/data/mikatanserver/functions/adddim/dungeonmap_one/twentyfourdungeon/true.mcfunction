bossbar remove minecraft:twentyfourboss_bar
execute if score $diff TwentyfourBossSkill matches 0 run give @a[tag=DungeonPlay_24] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"その存在は未知なる旋律を奏でて","color":"blue"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentyfour_dungeon/boss/boss0"}}
execute if score $diff TwentyfourBossSkill matches 1 run give @a[tag=DungeonPlay_24] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"その存在は未知なる旋律を奏でて","color":"blue"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentyfour_dungeon/boss/boss1"}}
execute if score $diff TwentyfourBossSkill matches 2 run give @a[tag=DungeonPlay_24] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"その存在は未知なる旋律を奏でて","color":"blue"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentyfour_dungeon/boss/boss2"}}
execute if score $diff TwentyfourBossSkill matches 3 run give @a[tag=DungeonPlay_24] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"その存在は未知なる旋律を奏でて","color":"blue"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentyfour_dungeon/boss/boss3"}}
#execute as @a[tag=DungeonPlay_22] if entity @s[nbt={SelectedItem:{tag:{dancing:[1]}}}] run give @s minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentytwo_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_24] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_24] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_24] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:twentyfourboss_bar
scoreboard players add @a[tag=DungeonPlay_24] DungeonClear_Num 15
execute as @a[tag=DungeonPlay_24] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
tag @a[tag=DungeonPlay_24] remove CountLeader
tag @a[tag=DungeonPlay_24] remove DungeonPlay
tag @a[tag=DungeonPlay_24] remove BossBattle24
tag @a[tag=DungeonPlay_24] add Return_Dun_24
scoreboard players set $24 dungeon_play_now 0
execute if score $diff TwentyfourBossSkill matches 0 run scoreboard players add $24_0_Clear ClearPer 1
execute if score $diff TwentyfourBossSkill matches 1 run scoreboard players add $24_1_Clear ClearPer 1
execute if score $diff TwentyfourBossSkill matches 2 run scoreboard players add $24_2_Clear ClearPer 1
execute if score $diff TwentyfourBossSkill matches 3 run scoreboard players add $24_3_Clear ClearPer 1
scoreboard objectives remove TwentyfourDunDeath
scoreboard objectives remove TwentyfourBossSkill
scoreboard objectives remove TwentyfourBossSkill2
scoreboard objectives remove TwentyfourBossDush
scoreboard objectives remove TwentyfourBossWalk
kill @e[tag=TwentyfourDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentyfourDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/clearboss_tp 220t