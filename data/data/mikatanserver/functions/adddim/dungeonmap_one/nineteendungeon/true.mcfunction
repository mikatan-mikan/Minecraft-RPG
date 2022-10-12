bossbar remove minecraft:nineteenboss_bar
advancement grant @a[tag=DungeonPlay_19] only mikatanserver:tp/dungeon_clear/nineteen
give @a[tag=DungeonPlay_19] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/nineteen_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_19] at @s run playsound entity.player.levelup master @s ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_19] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:nineteenboss_bar
scoreboard players add @a[tag=DungeonPlay_19] DungeonClear_Num 3
execute as @a[tag=DungeonPlay_19] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
tag @a[tag=DungeonPlay_19] remove CountLeader
tag @a[tag=DungeonPlay_19] remove DungeonPlay
tag @a[tag=DungeonPlay_19] remove BossBattle19
tag @a[tag=DungeonPlay_19] add Return_Dun_19
scoreboard objectives remove NineteenDunDeath
scoreboard objectives remove NineteenBossSkill
scoreboard objectives remove NineteenBossSkill2
scoreboard objectives remove NineteenBossSkill3
scoreboard objectives remove NineteenBossSkill4

scoreboard players set $19 dungeon_play_now 0
kill @e[tag=NineteenDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=NineteenDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/clearboss_tp 100t