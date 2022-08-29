bossbar remove minecraft:secondboss_bar

advancement grant @a[tag=DungeonPlay_2] only mikatanserver:tp/dungeon_clear/second
scoreboard objectives remove SecDSkillTimer1
give @a[tag=DungeonPlay_2] minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/second_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_6] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_6] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_2] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:secondboss_bar
scoreboard players add @a[tag=DungeonPlay_2] DungeonClear_Num 1
execute as @a[tag=DungeonPlay_2] run function mikatanserver:adddim/dungeonmap_one/atks_xp
tag @a[tag=DungeonPlay_2] remove CountLeader
tag @a[tag=DungeonPlay_2] remove DungeonPlay
tag @a[tag=DungeonPlay_2] remove BossBattle2
scoreboard objectives remove SecondDunDeath
kill @e[tag=SecDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item]
execute in mikatanserver:dungeon run kill @e[tag=SecDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/seconddungeon/boss/clearboss_tp 100t