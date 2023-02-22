bossbar remove minecraft:twentysixboss_bar
advancement grant @a[tag=DungeonPlay_26] only mikatanserver:tp/dungeon_clear/twentysix
give @a[tag=DungeonPlay_26] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"風の精霊と緑の大地","color":"green"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentysix_dungeon/boss/boss"}}
give @a[tag=DungeonCaller26] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"風の精霊と緑の大地","color":"green"},{"text": "(リーダーボーナス)","color": "red"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentysix_dungeon/boss/caller"}}
tag @a remove DungeonCaller26
#execute as @a[tag=DungeonPlay_26] if entity @s[nbt={SelectedItem:{tag:{dancing:[1]}}}] run give @s minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentysix_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_26] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_26] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_26] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:twentysixboss_bar
scoreboard players add @a[tag=DungeonPlay_26] DungeonClear_Num 15
execute as @a[tag=DungeonPlay_26] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
tag @a[tag=DungeonPlay_26] remove CountLeader
tag @a[tag=DungeonPlay_26] remove DungeonPlay
tag @a[tag=DungeonPlay_26] remove BossBattle26
tag @a[tag=DungeonPlay_26] add Return_Dun_26
tag @a[tag=DungeonPlay_26] remove DungeonPlay_26
scoreboard players set $26 dungeon_play_now 0
scoreboard players add $26_Clear ClearPer 1
scoreboard objectives remove TwentysixDunDeath
scoreboard objectives remove TwentysixBossSkill
scoreboard objectives remove TwentysixBossSkill2
kill @e[tag=TwentysixDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentysixDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/boss/clearboss_tp 100t