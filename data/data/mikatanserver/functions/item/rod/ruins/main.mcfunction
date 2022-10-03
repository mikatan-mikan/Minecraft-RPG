scoreboard players remove @s mana 40

execute if entity @s[nbt={SelectedItem:{tag:{tier:2}},Inventory:[{Slot:9b,tag:{CustomModelData:39}}]}] run effect give @s resistance 2 0
execute if entity @s[nbt={SelectedItem:{tag:{tier:2}},Inventory:[{Slot:100b,tag:{rhodochrosite:true}},{Slot:101b,tag:{rhodochrosite:true}},{Slot:102b,tag:{rhodochrosite:true}},{Slot:103b,tag:{rhodochrosite:true}}]}] run function mikatanserver:item/rod/ruins/rhodo_fullset/check

playsound block.beacon.activate master @a[distance=..30] ~ ~ ~ 2 1.7
summon armor_stand ~ ~1 ~ {Tags:["Ruins_Rod_Ar","TagBefAr"],Small:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute positioned ~ ~1 ~ run function mikatanserver:item/rod/ruins/before_particle
execute store result score @s NowDic run data get entity @s Rotation[0]
execute store result entity @e[tag=TagBefAr,sort=nearest,limit=1] Rotation[0] float 1 run scoreboard players get @s NowDic
tag @e[tag=TagBefAr,sort=nearest,limit=1] remove TagBefAr
execute as @e[tag=Ruins_Rod_Ar,sort=nearest,limit=1] at @s run function mikatanserver:item/rod/ruins/move_ar