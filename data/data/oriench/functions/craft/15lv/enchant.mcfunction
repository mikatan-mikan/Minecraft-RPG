xp add @p -2 levels
#テンプレート
execute store result score @s EnchanterItemCount8 run data get block ~ ~ ~ Items[8].Count
scoreboard players remove @s EnchanterItemCount8 1
execute store result block ~ ~ ~ Items[8].Count short 1 run scoreboard players get @s EnchanterItemCount8
execute if score @s EnchanterItemCount8 matches 0 run item replace block ~ ~ ~ container.8 with minecraft:air

execute store result score @s EnchanterItemCount7 run data get block ~ ~ ~ Items[7].Count
scoreboard players remove @s EnchanterItemCount7 1
execute store result block ~ ~ ~ Items[7].Count short 1 run scoreboard players get @s EnchanterItemCount7
execute if score @s EnchanterItemCount7 matches 0 run item replace block ~ ~ ~ container.7 with minecraft:air

execute store result score @s EnchanterItemCount6 run data get block ~ ~ ~ Items[6].Count
scoreboard players remove @s EnchanterItemCount6 1
execute store result block ~ ~ ~ Items[6].Count short 1 run scoreboard players get @s EnchanterItemCount6
execute if score @s EnchanterItemCount6 matches 0 run item replace block ~ ~ ~ container.6 with minecraft:air

execute store result score @s EnchanterItemCount5 run data get block ~ ~ ~ Items[5].Count
scoreboard players remove @s EnchanterItemCount5 1
execute store result block ~ ~ ~ Items[5].Count short 1 run scoreboard players get @s EnchanterItemCount5
execute if score @s EnchanterItemCount5 matches 0 run item replace block ~ ~ ~ container.5 with minecraft:air

execute store result score @s EnchanterItemCount4 run data get block ~ ~ ~ Items[3].Count
scoreboard players remove @s EnchanterItemCount4 1
execute store result block ~ ~ ~ Items[3].Count short 1 run scoreboard players get @s EnchanterItemCount4
execute if score @s EnchanterItemCount4 matches 0 run item replace block ~ ~ ~ container.3 with minecraft:air

execute store result score @s EnchanterItemCount3 run data get block ~ ~ ~ Items[2].Count
scoreboard players remove @s EnchanterItemCount3 1
execute store result block ~ ~ ~ Items[2].Count short 1 run scoreboard players get @s EnchanterItemCount3
execute if score @s EnchanterItemCount3 matches 0 run item replace block ~ ~ ~ container.2 with minecraft:air

execute store result score @s EnchanterItemCount2 run data get block ~ ~ ~ Items[1].Count
scoreboard players remove @s EnchanterItemCount2 1
execute store result block ~ ~ ~ Items[1].Count short 1 run scoreboard players get @s EnchanterItemCount2
execute if score @s EnchanterItemCount2 matches 0 run item replace block ~ ~ ~ container.1 with minecraft:air

execute store result score @s EnchanterItemCount run data get block ~ ~ ~ Items[0].Count
scoreboard players remove @s EnchanterItemCount 1
execute store result block ~ ~ ~ Items[0].Count short 1 run scoreboard players get @s EnchanterItemCount
execute if score @s EnchanterItemCount matches 0 run item replace block ~ ~ ~ container.0 with minecraft:air

item modify block ~ ~ ~ container.4 oriench:rand/ench_del

scoreboard players set @s MK.r.RandValue 100
function mikatanlib:rand/rand_exe

function oriench:craft/15lv/enchant/rand/main

playsound minecraft:block.smithing_table.use master @a

scoreboard players add @p 15lvCount 1
scoreboard players add @p manaxp 6

execute as @p run function mikatanserver:main/lvup/_artifact/mana
#view xp
execute as @p run function mikatanserver:main/lvup/_view/mana

execute as @p run function mikatanserver:main/lvup/_accessory/mana
##lvup
execute as @p if score $NowMax AllLV > @s mana-Lv if score @s manaxp >= @s needmanaxp run function mikatanserver:main/lvup/xpcount/manalvup