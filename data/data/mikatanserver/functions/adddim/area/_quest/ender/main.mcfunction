scoreboard players add @s QUEST_ENDER 1
##サモアイ判定
    execute as @s[tag=FieldEnder] at @s if predicate mikatanserver:chance/0.02 run function mikatanserver:adddim/area/ender/mob/summon_eye_ender
    execute as @s[tag=FieldEnder,nbt={Inventory:[{id:"minecraft:chainmail_boots",Count:1b,Slot:100b,tag:{ender_ar:1b}}]}] at @s if predicate mikatanserver:chance/0.02 run function mikatanserver:adddim/area/ender/mob/summon_eye_ender
    execute as @s[tag=FieldEnder,nbt={Inventory:[{id:"minecraft:chainmail_leggings",Count:1b,Slot:101b,tag:{ender_ar:1b}}]}] at @s if predicate mikatanserver:chance/0.02 run function mikatanserver:adddim/area/ender/mob/summon_eye_ender
    execute as @s[tag=FieldEnder,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Count:1b,Slot:102b,tag:{ender_ar:1b}}]}] at @s if predicate mikatanserver:chance/0.02 run function mikatanserver:adddim/area/ender/mob/summon_eye_ender
    scoreboard players set @a field_EnderKillCnt 0
execute if entity @s[nbt={Inventory:[{Slot:10b,tag:{CustomModelData:55},id:"minecraft:magma_cream"}]}] if predicate mikatanserver:chance/0.35 run scoreboard players add @s QUEST_ENDER 1
function mikatanserver:adddim/area/_quest/ender/show_actionbar
execute if score @s QUEST_ENDER >= $200 int run function mikatanserver:adddim/area/_quest/ender/clear