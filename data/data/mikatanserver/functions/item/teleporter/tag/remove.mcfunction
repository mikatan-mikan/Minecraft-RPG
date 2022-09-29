
##エリアタグ
tag @s remove new_year2021P
tag @s remove tp_after
tag @s remove FieldEnder
tag @s remove FieldIsland
clear @s iron_pickaxe{island_item:true}
clear @s stone_axe{island_item:true}
tag @s remove FieldHalloween
tag @s remove Fieldfarm
clear @s wooden_hoe{area_farming_item:true}
tag @s remove FieldNewyear_2023
execute as @a[tag=FieldNether,predicate=mikatanserver:overworld] run function mikatanserver:main/event/nether/reset_bossbar
execute as @a[tag=FieldRuins,predicate=mikatanserver:overworld] run function mikatanserver:main/event/ruins/reset_bossbar
tag @s remove ender_tp_after
tag @s remove island_tp_after
tag @s remove halloween_tp_after
tag @s remove farm_tp_after
tag @s remove newyear_2023_tp_after
##鉱石タグ
tag @s remove ore_charoite
tag @s remove ore_peridot
tag @s remove ore_rhodo
tag @s remove ore_ruby
tag @s remove ore_sapphire
tag @s remove ore_sphene
tag @s remove ore_sunstone
tag @s remove ore_aquamarine
tag @s remove ore_jade
tag @s remove ore_hematite
tag @s remove event_christmas
tag @s remove event_christmas_2022
tag @s remove ore_windmasic