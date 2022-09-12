#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:leather_chestplate{display:{Name:'[{"text":"rhodochrosite chestplate"}]',Lore:['[{"text": "胴体に装備したとき :","color":"white","italic": false}]','[{"text":" 防具 +8","color": "dark_green","italic": false}]','[{"text": " 防具強度 +3.0","color": "dark_green","italic": false}]','[{"text": " 最大体力 +0.25","color": "dark_green","italic": false}]'],color:16749311},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.armor",Amount:8.0,Operation:0,Slot:"chest",UUID:[I;915581423,-105458275,-295946392,53618121]},{AttributeName:"generic.armor_toughness",Amount:3.25,Operation:0,Slot:"chest",UUID:[I;-212372333,307371239,101113870,96471232]},{AttributeName:"minecraft:generic.max_health",Amount:0.25,Operation:0,Slot:"chest",UUID:[I;221243134,235463474,47352235,34374762]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/armor/rhodochrositecraft