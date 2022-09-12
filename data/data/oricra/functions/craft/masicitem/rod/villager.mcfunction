#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:27,display:{Name:'[{"text":"villager tp","color":"yellow"}]',Lore:['[{"text":"このアイテムを右クリックするとアーマースタンドを召喚する"}]','[{"text":"その後、右クリックで範囲10m以内の村人をアーマースタンドにtpする"}]','[{"text":"mana cost:15"}]']}} 1
