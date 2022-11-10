#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:leather_boots{display:{Name:'[{"text":"magician boots","color": "dark_purple"}]',Lore:['[{"text": "masic装備で統一されているとき、マナ経験値を得た際に30%で+1される"}]','[{"text": "足に装備したとき :","color":"white","italic": false}]','[{"text":" 防具 +1","color": "dark_green","italic": false}]'],color:7536821},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.armor",Amount:1.0,Operation:0,Slot:"feet",UUID:[I;915581423,-1827275,-928121392,53261117]}],Unbreakable:1b} 1

#進捗
advancement grant @p only mikatanserver:event/ruins/armor_mana_2