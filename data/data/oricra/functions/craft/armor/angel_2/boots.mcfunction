#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:iron_boots{display:{Name:'[{"text":"maiden boots"}]',Lore:['[{"text": "足に装備したとき :","color":"white","italic": false}]','[{"text":" 防具 +4","color": "dark_green","italic": false}]','[{"text": " 防具強度 +3","color": "dark_green","italic": false}]','[{"text": " スピード +1%","color": "dark_green","italic": false}]']},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.armor",Amount:4.0,Operation:0,Slot:"feet",UUID:[I;915581423,-105458275,-295946392,55618117]},{AttributeName:"generic.armor_toughness",Amount:3,Operation:0,Slot:"feet",UUID:[I;-212372333,307371239,101113870,96671228]},{AttributeName:"minecraft:generic.movement_speed",UUID:[I;187341,135134,513542,51351414],Operation:1,Amount:0.01,Slot:"feet"}],Unbreakable:1b,armor_angel:1b} 1