#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:elytra{display:{Name:'[{"text":"氷結のエリトラ","color": "aqua"}]'},AttributeModifiers:[{AttributeName:"generic.armor",Amount:3.0,Operation:0,Slot:"chest",UUID:[I;915581423,-105458275,-295946392,53618117]}],CustomModelData:1} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/armor/iceelytra