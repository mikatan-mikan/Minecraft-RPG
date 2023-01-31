bossbar remove minecraft:sixthboss_bar
effect clear @a[tag=DungeonPlay_6] speed
give @a[tag=DungeonPlay_6] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"記憶の奥底に・・・","color":"aqua"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/sixth_dungeon/boss/boss"}}
give @a[tag=CountLeader] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"記憶の奥底に・・・","color":"aqua"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/sixth_dungeon/boss/boss"}}
tellraw @a[tag=DungeonPlay_6] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"6秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
execute as @a[tag=DungeonPlay_6] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_6] ~ ~ ~ 2 0
bossbar remove minecraft:sixthboss_bar
advancement grant @a[tag=DungeonPlay_6] only mikatanserver:tp/dungeon_clear/sixthall
tag @a[tag=DungeonPlay_6] remove CountLeader
tag @a[tag=DungeonPlay_6] remove DungeonPlay
tag @a[tag=DungeonPlay_6] remove BossBattle6
tag @a[tag=DungeonPlay_6] add Return_Dun_6
scoreboard players set $6 dungeon_play_now 0
scoreboard objectives remove SixthDunDeath
scoreboard objectives remove SixBossSkill
scoreboard objectives remove TrollSixDunSkill
scoreboard objectives remove TrollArmorCT
scoreboard objectives remove SixDunBackS 
scoreboard objectives remove PheseManeger_6
kill @e[tag=SixDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=SixDunMob]
gamerule keepInventory true
schedule function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/boss/clearboss_tp 100t