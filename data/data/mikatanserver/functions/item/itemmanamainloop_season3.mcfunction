execute store result score @s CustomModelData run data get entity @s SelectedItem.tag.CustomModelData

##防具処理
execute if entity @e[nbt={SelectedItem:{tag:{carrot_armor:1b}}}] run function mikatanserver:item/armor/_check

##masic items
#absorption rod:30
execute as @s[scores={mana=30..,CustomModelData=133}] at @s run function mikatanserver:item/rod/absorption/main
#forest rod:40
execute as @s[scores={mana=40..,CustomModelData=148}] at @s run function mikatanserver:item/rod/forest/main

##masic and sword items
#sand sword:30
execute as @s[scores={mana=10..,CustomModelData=134}] at @s run function mikatanserver:item/rod/sand/main
#pyrite rod:none
execute as @s[scores={CustomModelData=149}] if score @s RodCoolTime matches 0.. at @s run function mikatanserver:item/rod/pyrite/main
#pyrite rod:none
execute as @s[scores={CustomModelData=156}] if score @s RodCoolTime matches 0.. at @s run function mikatanserver:item/rod/pyrite/main
#silf rod:35
execute as @s[scores={mana=35..,CustomModelData=141}] at @s run function mikatanserver:item/rod/silf/main
#salamander rod:35
execute as @s[scores={mana=35..,CustomModelData=163}] at @s run function mikatanserver:item/rod/salamander/main
#saturation rod:30
execute as @s[scores={mana=30..,CustomModelData=171}] at @s run function mikatanserver:item/rod/saturation/main
#scythe:20
execute as @s[scores={mana=20..,CustomModelData=174}] if data entity @s SelectedItem.tag.masic at @s run function mikatanserver:item/rod/undine_scythe/main

##dungeon
#dungeon twentyfive
execute as @s[scores={AllLV=150..,CustomModelData=135}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/twentyfive/init
#dungeon twentyfive
execute as @s[scores={AllLV=200..,RewardPoint=7000..,CustomModelData=136}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/twentysix/init
#dungeon twentyeight
execute as @s[scores={AllLV=40..,CustomModelData=138}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/twentyeight/diff_check
#dungeon thirty
execute as @s[scores={AllLV=200..,RewardPoint=7000..,CustomModelData=164}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/thirty/init
#dungeon thirtyone
execute as @s[scores={AllLV=40..,CustomModelData=169},advancements={mikatanserver:event/volcano/tp=true}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/thirtyone/init
#dungeon thirtytwo
execute as @s[scores={AllLV=40..,CustomModelData=170}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/thirtytwo/diff_check
#dungeon thirtythree
execute as @s[scores={AllLV=100..,CustomModelData=173}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/thirtythree/diff_check

##ores world
#masic_wind2
execute as @s[scores={CustomModelData=142}] run function mikatanserver:item/teleporter/masic_wind2
#masic_ice2
execute as @s[scores={CustomModelData=158}] run function mikatanserver:item/teleporter/masic_ice2
#masic_light2
execute as @s[scores={CustomModelData=165}] run function mikatanserver:item/teleporter/masic_light2
#masic_dark2
execute as @s[scores={CustomModelData=166}] run function mikatanserver:item/teleporter/masic_dark2

##area
#silf
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:147}}},advancements={mikatanserver:customcrafter/add_stone/sand=true,mikatanserver:story/v3/1=true}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/area/silf
#universe
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:157}}},advancements={mikatanserver:customcrafter/rod_and_sword/pyrite_2=true,mikatanserver:story/v3/2=true}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/area/universe
#salamander
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:161}}},advancements={mikatanserver:customreinforcer/4=true,mikatanserver:story/v3/3=true}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/area/salamander
#undine
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:175}}},advancements={mikatanserver:story/v3/4=true},scores={AllLV=190..}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/area/undine

##slime giant
    #ボスがいないなら召喚可能
    execute as @s[nbt={SelectedItem:{tag:{CustomModelData:143}}}] at @s if predicate mikatanserver:overworld unless score $giant RAID_Flag matches 1 run function mikatanserver:adddim/raid/giant/call
    #ボスがいるなら参加可能
    execute as @s[nbt={SelectedItem:{tag:{CustomModelData:144}}}] at @s if predicate mikatanserver:overworld if score $giant RAID_Flag matches 1 run function mikatanserver:adddim/raid/giant/participation
##red crystal
    #ボスがいないなら召喚可能
    execute as @s[nbt={SelectedItem:{tag:{CustomModelData:152}}}] at @s if predicate mikatanserver:overworld unless score $redcrystal RAID_Flag matches 1 run function mikatanserver:adddim/raid/redcrystal/call
    #ボスがいるなら参加可能
    execute as @s[nbt={SelectedItem:{tag:{CustomModelData:151}}}] at @s if predicate mikatanserver:overworld if score $redcrystal RAID_Flag matches 1 run function mikatanserver:adddim/raid/redcrystal/participation

##追加アイテム等入手条件解放処理
execute as @s[scores={CustomModelData=140}] at @s run function mikatanserver:item/add_stone/sand/main
execute as @s[scores={CustomModelData=167}] at @s run function mikatanserver:item/add_stone/soul/main