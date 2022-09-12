#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:28,display:{Name:'[{"text":"summon villager zombie","color":"yellow"}]',Lore:['[{"text":"このアイテムを右クリックすると村人ゾンビを召喚する"}]','[{"text":"mana cost:20 + diamond block:1"}]']}} 1
