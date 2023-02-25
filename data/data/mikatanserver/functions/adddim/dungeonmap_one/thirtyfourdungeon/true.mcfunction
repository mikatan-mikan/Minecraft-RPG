bossbar remove minecraft:thirtyfourboss_bar
advancement grant @a[tag=DungeonPlay_34] only mikatanserver:tp/dungeon_clear/thirtyfour
give @a[tag=DungeonPlay_34] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"水の精霊と青の大地","color":"blue"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/thirtyfour_dungeon/boss/boss"}}
give @a[tag=DungeonCaller34] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"水の精霊と青の大地","color":"blue"},{"text": "(リーダーボーナス)","color": "red"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/thirtyfour_dungeon/boss/caller"}}
tag @a remove DungeonCaller34
#execute as @a[tag=DungeonPlay_34] if entity @s[nbt={SelectedItem:{tag:{dancing:[1]}}}] run give @s minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/thirtyfour_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_34] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_34] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_34] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:thirtyfourboss_bar
scoreboard players add @a[tag=DungeonPlay_34] DungeonClear_Num 15
execute as @a[tag=DungeonPlay_34] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
tag @a[tag=DungeonPlay_34] remove CountLeader
tag @a[tag=DungeonPlay_34] remove DungeonPlay
tag @a[tag=DungeonPlay_34] remove BossBattle34
tag @a[tag=DungeonPlay_34] add Return_Dun_34
tag @a[tag=DungeonPlay_34] remove DungeonPlay_34
scoreboard players set $34 dungeon_play_now 0
scoreboard players add $34_Clear ClearPer 1
scoreboard objectives remove ThirtyfourDunDeath
scoreboard objectives remove ThirtyfourBossSkill
scoreboard objectives remove ThirtyfourBossSkill2
kill @e[tag=ThirtyfourDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ThirtyfourDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/boss/clearboss_tp 100t