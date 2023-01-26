scoreboard players set @s SpecialSkill 0
scoreboard players reset @s tradecount
scoreboard players reset @s StoryVillagerTalk
##エリアタグ
    tag @s remove new_year2021P
    tag @s remove tp_after
    tag @s remove FieldEnder
    #tag @s remove FieldNether
    #tag @s remove FieldRuins
    tag @s remove FieldIsland
    clear @s iron_pickaxe{island_item:true}
    clear @s stone_axe{island_item:true}
    tag @s remove FieldHalloween
    tag @s remove Fieldfarm
    clear @s wooden_hoe{area_farming_item:true}
    tag @s remove FieldNewyear_2023
    #tag @s remove FieldJungle
    tag @s remove FieldCherryblossom
    tag @s remove FieldCave
    clear @s diamond_pickaxe{cave_item:true}
    tag @s remove FieldVolcano
    tag @s remove FieldSilf
    tag @s remove FieldUniverse
    execute as @s[tag=FieldNether,predicate=mikatanserver:overworld] run function mikatanserver:main/event/nether/reset_bossbar
    execute as @s[tag=FieldRuins,predicate=mikatanserver:overworld] run function mikatanserver:main/event/ruins/reset_bossbar
    execute as @s[tag=FieldJungle,predicate=mikatanserver:overworld] run function mikatanserver:main/event/jungle/reset_bossbar
    execute as @s[tag=FieldNether_2,predicate=mikatanserver:overworld] run function mikatanserver:main/event/nether_tier2/reset_bossbar
    execute as @s[tag=FieldEnder_2,predicate=mikatanserver:overworld] run function mikatanserver:main/event/ender_tier2/reset_bossbar
    execute as @s[tag=FieldDesert,predicate=mikatanserver:overworld] run function mikatanserver:main/event/desert/reset_bossbar
    tag @s remove ender_tp_after
    tag @s remove nether_tp_after
    tag @s remove ruins_tp_after
    tag @s remove island_tp_after
    tag @s remove halloween_tp_after
    tag @s remove farm_tp_after
    tag @s remove newyear_2023_tp_after
    tag @s remove jungle_tp_after
    tag @s remove cherryblossom_tp_after
    tag @s remove cave_tp_after
    tag @s remove volcano_tp_after
    tag @s remove desert_tp_after
    tag @s remove silf_tp_after
    tag @s remove universe_tp_after
    #alltag
    tag @s remove FieldPlayer
##クエストタグ
    execute if entity @s[tag=QUEST_PLAYER] run function mikatanserver:item/teleporter/tag/area/quest/check
##レイドタグ
    execute if entity @s[tag=RAID_Player] run function mikatanserver:item/teleporter/tag/raid/check
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
    tag @s remove ore_moon_stone
    tag @s remove ore_citrin
    tag @s remove ore_tanzanite
    tag @s remove ore_icemasic
    tag @s remove ore_lightmasic
    tag @s remove ore_darkmasic
    tag @s remove ore_fire2masic
    tag @s remove ore_wind2masic