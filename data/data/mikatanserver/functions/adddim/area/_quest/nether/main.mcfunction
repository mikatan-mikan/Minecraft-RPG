scoreboard players add @s QUEST_NETHER 1
execute if entity @s[nbt={Inventory:[{Slot:10b,tag:{CustomModelData:62},id:"minecraft:magma_cream"}]}] if predicate mikatanserver:chance/0.35 run scoreboard players add @s QUEST_ENDER 1
function mikatanserver:adddim/area/_quest/nether/show_actionbar
execute if score @s QUEST_NETHER >= $200 int run function mikatanserver:adddim/area/_quest/nether/clear