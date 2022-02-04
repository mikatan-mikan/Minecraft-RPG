#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:leather_boots{display:{Name:'[{"text":"rhodochrosite boots"}]',Lore:['[{"text": "足に装備したとき :","color":"white","italic": false}]','[{"text":" 防具 +3","color": "dark_green","italic": false}]','[{"text": " 防具強度 +3.0","color": "dark_green","italic": false}]','[{"text": " 最大体力 +0.25","color": "dark_green","italic": false}]'],color:16749311},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.armor",Amount:3.0,Operation:0,Slot:"feet",UUID:[I;915581423,-105458275,-295946392,53618117]},{AttributeName:"generic.armor_toughness",Amount:3.0,Operation:0,Slot:"feet",UUID:[I;-212372333,307371239,101113870,96471228]},{AttributeName:"minecraft:generic.max_health",Amount:0.25,Operation:0,Slot:"feet",UUID:[I;221243134,235463474,47352235,346356362]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/armor/rhodochrositecraft