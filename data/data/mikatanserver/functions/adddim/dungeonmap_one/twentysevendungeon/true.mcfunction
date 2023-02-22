bossbar remove minecraft:twentysevenboss_bar

# advancement grant @a[tag=DungeonPlay_27] only mikatanserver:tp/dungeon_clear/twentyseven
scoreboard objectives remove TwentysevenDSkillTimer1
give @a[tag=DungeonPlay_27] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"その先の存在","color":"green"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/twentyseven_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_27] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_27] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_27] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:twentysevenboss_bar
scoreboard players add @a[tag=DungeonPlay_27] DungeonClear_Num 3
execute as @a[tag=DungeonPlay_27] run function mikatanserver:adddim/dungeonmap_one/atks_xp
tag @a[tag=DungeonPlay_27] remove CountLeader
tag @a[tag=DungeonPlay_27] remove DungeonPlay
tag @a[tag=DungeonPlay_27] remove BossBattle27
tag @a[tag=DungeonPlay_27] add Return_Dun_27
tag @a[tag=DungeonPlay_27] remove DungeonPlay_27
scoreboard players set $27 dungeon_play_now 0
scoreboard players add $27_Clear ClearPer 1
scoreboard objectives remove TwentysevenDunDeath
kill @e[tag=TwentysevenDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=TwentysevenDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/boss/clearboss_tp 100t