##メイン処理
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},scores={ROD=1..}] unless data entity @s SelectedItem.tag.Season run function mikatanserver:item/itemmanamainloop
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},scores={ROD=1..}] if entity @s[nbt={SelectedItem:{tag:{Season:3}}}] run function mikatanserver:item/itemmanamainloop_season3
execute as @a[nbt={SelectedItem:{tag:{SpecialSkill:1b}}},scores={ROD=1..}] if entity @s[advancements={mikatanserver:customspskiller/root=true}] run function mikatanserver:item/itemmanamainloop_specialskill
##属性処理
execute as @a[tag=UseMana] if entity @s[advancements={mikatanserver:customenhancer/tablecraft=true}] at @s run function mikatanserver:item/_attribute/check
tag @a remove UseMana
##undo -> クリック回数
execute as @a[scores={ROD=1..}] run scoreboard players reset @s ROD
#execute as @a[nbt={{id:"minecraft:carrot_on_a_stick"}},scores={ROD=1..}] run