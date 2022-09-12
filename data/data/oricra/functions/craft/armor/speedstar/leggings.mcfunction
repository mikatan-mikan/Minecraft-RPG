#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:leather_leggings{display:{Name:'[{"text":"speedstar leggings","color": "aqua"}]',Lore:['[{"text": "脚に装備したとき :","color":"white","italic": false}]','[{"text":" 防具 +1","color": "dark_green","italic": false}]','[{"text": " 移動速度 +5%","color": "dark_green","italic": false}]'],color:9363952},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.armor",Amount:1.0,Operation:0,Slot:"legs",UUID:[I;915581423,-105458275,-295946392,53618117]},{AttributeName:"minecraft:generic.movement_speed",Amount:0.05,Operation:1,Slot:"legs",UUID:[I;221243134,235463474,47352235,346356362]}],Unbreakable:1b} 1

#進捗
advancement grant @p only mikatanserver:event/island/armor