scoreboard players set $mana TMP 15
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

execute if entity @s[nbt={SelectedItem:{tag:{tier:2}}}] run function mikatanserver:item/rod/comet_sword/tier2/mana

#彗星召喚
summon armor_stand ~ ~20 ~ {Tags:["StarSword_Comet","beforeresultAr"],Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lapis_block",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}],Small:1b}

#motion 代入
execute store result entity @e[tag=StarSword_Comet,tag=beforeresultAr,sort=nearest,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
scoreboard players set @e[tag=beforeresultAr] MK.v.VecValue 3
execute as @e[tag=beforeresultAr] run function mikatanlib:vector/vectorexe
scoreboard objectives add MotionZTMP dummy
scoreboard players set @s MotionZTMP 1
execute store result entity @e[tag=beforeresultAr,limit=1] Motion[1] double 1 run scoreboard players get @s MotionZTMP
scoreboard objectives remove MotionZTMP 

#tag remove
tag @e[tag=StarSword_Comet] remove beforeresultAr

#ダメージ判定
schedule function mikatanserver:item/rod/comet_sword/damage 1t