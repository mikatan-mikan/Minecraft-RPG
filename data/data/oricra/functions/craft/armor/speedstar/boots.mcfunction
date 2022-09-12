#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:leather_boots{display:{Name:'[{"text":"speedstar boots","color": "aqua"}]',Lore:['[{"text": "足に装備したとき :","color":"white","italic": false}]','[{"text":" 防具 +1","color": "dark_green","italic": false}]','[{"text": " 移動速度 +5%","color": "dark_green","italic": false}]'],color:9363952},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.armor",Amount:1.0,Operation:0,Slot:"feet",UUID:[I;42381423,-105459275,-295946392,5392837]},{AttributeName:"minecraft:generic.movement_speed",Amount:0.05,Operation:1,Slot:"feet",UUID:[I;22164134,235763474,47352235,3]}],Unbreakable:1b} 1

#進捗
advancement grant @p only mikatanserver:event/island/armor