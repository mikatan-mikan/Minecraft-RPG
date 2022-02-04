execute at @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:25}}}] run playsound entity.item.break master @s ~ ~ ~ 2 1
item replace entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:25}}}] weapon.mainhand with minecraft:air
execute store result score @s CarrotOnAStickDamageStore run data get entity @s SelectedItem.tag.Damage
scoreboard players add @s CarrotOnAStickDamageStore 1
scoreboard players set @s CarrotOnAStickDamageStoreCalc 25
scoreboard players operation @s CarrotOnAStickDamageStoreCalc -= @s CarrotOnAStickDamageStore
scoreboard players operation @s CarrotOnAStickDamageStore = @s CarrotOnAStickDamageStoreCalc
item modify entity @s weapon.mainhand mikatanserver:main/carrotstick/damage