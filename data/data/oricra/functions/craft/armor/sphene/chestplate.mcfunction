#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:leather_chestplate{display:{Name:'[{"text":"sphene chestplate"}]',Lore:['[{"text": "胴体に装備したとき :","color":"white","italic": false}]','[{"text":" 防具 +8","color": "dark_green","italic": false}]','[{"text": " 防具強度 +3.25","color": "dark_green","italic": false}]'],color:14669862},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.armor",Amount:8.0,Operation:0,Slot:"chest",UUID:[I;915581423,-105458275,-295946392,53618121]},{AttributeName:"generic.armor_toughness",Amount:3.25,Operation:0,Slot:"chest",UUID:[I;-212372333,307371239,101113870,96471232]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/armor/sphenecraft