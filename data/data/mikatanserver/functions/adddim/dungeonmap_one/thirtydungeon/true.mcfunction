bossbar remove minecraft:thirtyboss_bar
advancement grant @a[tag=DungeonPlay_30] only mikatanserver:tp/dungeon_clear/thirty
give @a[tag=DungeonPlay_30] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"炎の精霊と赤の大地","color":"red"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/thirty_dungeon/boss/boss"}}
give @a[tag=DungeonCaller30] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"炎の精霊と赤の大地","color":"red"},{"text": "(リーダーボーナス)","color": "red"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/thirty_dungeon/boss/caller"}}
tag @a remove DungeonCaller30
#execute as @a[tag=DungeonPlay_30] if entity @s[nbt={SelectedItem:{tag:{dancing:[1]}}}] run give @s minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/thirty_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_30] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_30] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_30] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:thirtyboss_bar
scoreboard players add @a[tag=DungeonPlay_30] DungeonClear_Num 15
execute as @a[tag=DungeonPlay_30] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
tag @a[tag=DungeonPlay_30] remove CountLeader
tag @a[tag=DungeonPlay_30] remove DungeonPlay
tag @a[tag=DungeonPlay_30] remove BossBattle30
tag @a[tag=DungeonPlay_30] add Return_Dun_30
tag @a[tag=DungeonPlay_30] remove DungeonPlay_30
scoreboard players set $30 dungeon_play_now 0
scoreboard objectives remove ThirtyDunDeath
scoreboard objectives remove ThirtyBossSkill
scoreboard objectives remove ThirtyBossSkill2
kill @e[tag=ThirtyDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ThirtyDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/thirtydungeon/boss/clearboss_tp 100t