#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:leather_boots{display:{Name:'[{"text":"sphene boots"}]',Lore:['[{"text": "足に装備したとき :","color":"white","italic": false}]','[{"text":" 防具 +3","color": "dark_green","italic": false}]','[{"text": " 防具強度 +3.25","color": "dark_green","italic": false}]'],color:14669862},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.armor",Amount:3.0,Operation:0,Slot:"feet",UUID:[I;915581423,-105458275,-295946392,53618117]},{AttributeName:"generic.armor_toughness",Amount:3.25,Operation:0,Slot:"feet",UUID:[I;-212372333,307371239,101113870,96471228]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/armor/sphenecraft