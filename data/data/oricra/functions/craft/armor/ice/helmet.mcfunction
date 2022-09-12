#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:leather_helmet{display:{Name:'[{"text":"ice helmet"}]',Lore:['[{"text": "頭に装備したとき :","color":"white","italic": false}]','[{"text":" 防具 +3","color": "dark_green","italic": false}]','[{"text": " 防具強度 +3","color": "dark_green","italic": false}]'],color:5413870},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.armor",Amount:3.0,Operation:0,Slot:"head",UUID:[I;915581423,-105458290,-295946392,53618121]},{AttributeName:"generic.armor_toughness",Amount:3,Operation:0,Slot:"head",UUID:[I;-212372390,307371239,101113870,96471232]}],Enchantments:[{id:"minecraft:frost_walker",lvl:3}]} 1

#進捗
advancement grant @p only mikatanserver:event/newyear/craftar