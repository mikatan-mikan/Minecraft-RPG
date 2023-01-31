bossbar remove minecraft:fifthboss_bar
give @a[tag=DungeonPlay_5] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"そこにあるもの","color":"blue"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/fifth_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_5] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_5] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_5] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:fifthboss_bar
scoreboard players add @a[tag=DungeonPlay_5] DungeonClear_Num 1
execute as @a[tag=DungeonPlay_5] run function mikatanserver:adddim/dungeonmap_one/atks_xp
tag @a[tag=DungeonPlay_5] remove CountLeader
tag @a[tag=DungeonPlay_5] remove DungeonPlay
tag @a[tag=DungeonPlay_5] remove BossBattle5
tag @a[tag=DungeonPlay_5] add Return_Dun_5
scoreboard objectives remove FifthDunDeath
scoreboard objectives remove FifBossSkill
scoreboard objectives remove TrollFifDunSkill
scoreboard objectives remove TrollArmorCT
scoreboard objectives remove FifDunBackS 
scoreboard players set $5 dungeon_play_now 0
kill @e[tag=FifDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=FifDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/fifthdungeon/boss/clearboss_tp 100t