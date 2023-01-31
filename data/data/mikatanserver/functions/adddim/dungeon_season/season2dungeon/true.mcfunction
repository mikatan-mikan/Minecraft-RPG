bossbar remove minecraft:season2boss_bar

# advancement grant @a[tag=DungeonPlay_season2] only mikatanserver:tp/dungeon_clear/season2
scoreboard players reset $season2_boss dungeon_play_now
scoreboard objectives remove season2DSkillTimer1
scoreboard players add $season2_clear ClearPer 1

give @a[tag=DungeonPlay_season2] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"【聖高難易度】","color":"red"},{"text":"巫聖編","color":"gold"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/season2_dungeon/drop"}}

execute as @a[tag=DungeonPlay_season2] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_season2] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_season2] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:season2boss_bar
scoreboard players add @a[tag=DungeonPlay_season2] DungeonClear_Num 3
tag @a[tag=DungeonPlay_season2] remove CountLeader
tag @a[tag=DungeonPlay_season2] remove DungeonPlay
tag @a[tag=DungeonPlay_season2] remove BossBattleseason2
tag @a[tag=DungeonPlay_season2] add Return_Dun_season2
tag @a[tag=DungeonPlay_season2] remove DungeonPlay_season2
scoreboard players set $season2 dungeon_play_now 0
scoreboard objectives remove season2DunDeath
kill @e[tag=season2DunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=season2DunMob]
schedule function mikatanserver:adddim/dungeon_season/season2dungeon/_clearboss_tp 100t