#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:leather_helmet{display:{Name:'[{"text":"aqua helmet"}]',Lore:['[{"text": "頭に装備したとき :","color":"white","italic": false}]','[{"text":" 防具 +3","color": "dark_green","italic": false}]','[{"text": " 防具強度 +3","color": "dark_green","italic": false}]','[{"text": " 最大体力 +1","color": "dark_green","italic": false}]'],color:3841271},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.armor",Amount:3.0,Operation:0,Slot:"head",UUID:[I;915581423,-105458290,-295946392,53618121]},{AttributeName:"generic.armor_toughness",Amount:3,Operation:0,Slot:"head",UUID:[I;-212372390,307371239,101113870,96471232]},{AttributeName:"minecraft:generic.max_health",Amount:1,Operation:0,Slot:"feet",UUID:[I;221243134,235463474,47352235,375356362]}],Unbreakable:1b,aqua_ar:1b} 1


#進捗
advancement grant @p only mikatanserver:customcrafter/tool/aquamarine