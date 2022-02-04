##エンチャント
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:aqua_affinity"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:aqua_affinity"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:binding_curse"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:binding_curse"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:efficiency"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:efficiency"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:feather_falling"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:feather_falling"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:fire_aspect"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:fire_aspect"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:flame"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:flame"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:impaling"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:impaling"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:knockback"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:knockback"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:looting"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:looting"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:luck_of_the_sea"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:luck_of_the_sea"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:power"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:power"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:punch"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:punch"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:quick_charge"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:quick_charge"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:respiration"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:respiration"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:soul_speed"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:soul_speed"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:sweeping"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:sweeping"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:thorns"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:thorns"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:vanishing_curse"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:vanishing_curse"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:unbreaking"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:unbreaking"}]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:lure"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:lure"}]


##競合
#protection
    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:fire_protection"}]}}]} unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:protection"}]}}]} unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:blast_protection"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:projectile_protection"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:projectile_protection"}]

    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:fire_protection"}]}}]} unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:projectile_protection"}]}}]} unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:blast_protection"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:protection"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:protection"}]

    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:protection"}]}}]} unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:projectile_protection"}]}}]} unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:blast_protection"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:fire_protection"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:fire_protection"}]

    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:fire_protection"}]}}]} unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:projectile_protection"}]}}]} unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:protection"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:blast_protection"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:blast_protection"}]

#fortune and mending
    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:fortune"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:fortune"}]

    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:fortune"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:silk_touch"}]

#sharp smite bane_of_arthropods
    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:bane_of_arthropods"}]}}]} unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:smite"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:sharpness"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:sharpness"}]
    
    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:sharpness"}]}}]} unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:bane_of_arthropods"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:smite"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:smite"}]
    
    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:sharpness"}]}}]} unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:smite"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:bane_of_arthropods"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:bane_of_arthropods"}]

#infinity mending
    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:mending"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:mending"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:infinity"}]

    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:infinity"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:mending"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:mending"}]

#frost walker
    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:depth_strider"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:frost_walker"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:frost_walker"}]

    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:frost_walker"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:depth_strider"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:depth_strider"}]

#multishot piercing
    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:piercing"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:multishot"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:multishot"}]

    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:multishot"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:piercing"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:piercing"}]

#channeling
    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:riptide"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:channeling"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:channeling"}]

    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:channeling"}]}}]} unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:loyalty"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:riptide"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:riptide"}]

    execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{id:"minecraft:riptide"}]}}]} run data modify block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:loyalty"}] merge from block ~ ~ ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:loyalty"}]


#エンチャント本消費
item replace block ~ ~ ~ container.4 with air

#サウンド
playsound block.enchantment_table.use master @a[distance=..9] ~ ~ ~ 2 1
#パーティクル
particle witch ~ ~ ~ 0.3 0.3 0.3 1 20

#実績カウンタ
scoreboard players add @p CrafterEnchCnt 1

 #data modify entity @e[type=minecraft:snowball,tag=Summon_Tact,limit=1,sort=nearest] Owner set from entity @e[tag=!ZomAllies,type=!player,type=!item,type=!item_frame,type=!armor_stand,limit=1,sort=nearest,distance=..10] UUID