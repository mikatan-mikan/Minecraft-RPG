bossbar remove minecraft:twentyfiveboss_bar
give @a[tag=DungeonPlay_25] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"聖杯 それは・・・","color":"yellow"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentyfive_dungeon/boss/boss"}}
#execute as @a[tag=DungeonPlay_14] if entity @s[nbt={SelectedItem:{tag:{dancing:[1]}}}] run give @s minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentyfive_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_25] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_25] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_25] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:twentyfiveboss_bar
scoreboard players add @a[tag=DungeonPlay_25] DungeonClear_Num 5
execute as @a[tag=DungeonPlay_25] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
execute as @e[tag=25_EffectAr_Slime] at @s run tp ~ -129 ~
tag @a[tag=DungeonPlay_25] remove CountLeader
tag @a[tag=DungeonPlay_25] remove DungeonPlay
tag @a[tag=DungeonPlay_25] remove BossBattle25
tag @a[tag=DungeonPlay_25] add Return_Dun_25
tag @a[tag=DungeonPlay_25] remove DungeonPlay_25
scoreboard objectives remove TwentyfiveDunDeath
scoreboard objectives remove TwentyfiveBossSkill
scoreboard objectives remove 14_boss_hp_checker
scoreboard players set $25 dungeon_play_now 0
scoreboard players add $25_Clear ClearPer 1
kill @e[tag=TwentyfiveDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentyfiveDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/clearboss_tp 100t