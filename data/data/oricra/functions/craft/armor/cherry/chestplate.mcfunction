#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:leather_chestplate{display:{Name:'[{"text":"cherry chestplate"}]',Lore:['[{"text": "桜の昇機","color": "gray","italic": false,"bold": false}]','[{"text": " 条件：cherry装備で統一されている","color": "blue","italic": false,"bold": false}]','[{"text": " AtkDXP時にAtkDXPが10%で+1される","color": "blue","italic": false,"bold": false}]','[{"text": "胴に装備したとき :","color":"white","italic": false}]','[{"text":" 防具 +2","color": "dark_green","italic": false}]','[{"text": " 防具強度 +3","color": "dark_green","italic": false}]'],color:14355297},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.armor",Amount:2.0,Operation:0,Slot:"chest",UUID:[I;-918129127,-105458275,-295946392,-53618117]},{AttributeName:"generic.armor_toughness",Amount:3,Operation:0,Slot:"chest",UUID:[I;-292832333,307371239,141343870,96424241]}],Unbreakable:1b,cherry_ar:true} 1

advancement grant @p only mikatanserver:event/cherry/armor