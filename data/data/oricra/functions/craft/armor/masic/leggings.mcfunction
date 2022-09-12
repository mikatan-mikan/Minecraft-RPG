#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:leather_leggings{display:{Name:'[{"text":"masic leggings","color": "dark_purple"}]',Lore:['[{"text": "masic装備で統一されているとき、マナ経験値を得た際に20%で+1される"}]','[{"text": "脚に装備したとき :","color":"white","italic": false}]','[{"text":" 防具 +1","color": "dark_green","italic": false}]'],color:10887667},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.armor",Amount:1.0,Operation:0,Slot:"legs",UUID:[I;915581423,-1827275,-295946392,53261117]}],Unbreakable:1b,masic_armor:true} 1

#進捗
advancement grant @p only mikatanserver:event/island/armor_mana