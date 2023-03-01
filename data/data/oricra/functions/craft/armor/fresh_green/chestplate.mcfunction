#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:leather_chestplate{display:{Name:'[{"text":"fresh green chestplate"}]',color:2932224,Lore:['[{"text": "胴体に装備したとき :","color":"white","italic": false}]','[{"text":" 防具 +8","color": "dark_green","italic": false}]','[{"text": " 攻撃力 +0.25","color": "dark_green","italic": false}]']},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.armor",Amount:8.0,Operation:0,Slot:"chest",UUID:[I;915581423,-105458275,-295946392,53618117]},{AttributeName:"generic.attack_damage",Amount:0.25,Operation:0,Slot:"chest",UUID:[I;-212372333,307371239,101113870,96471228]}],fresh_ar:true} 1

#進捗
advancement grant @p only mikatanserver:event/jungle/craftar