#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:leather_chestplate{display:{Name:'[{"text":"conclude chestplate","color":"dark_purple"}]',color:4260708},Unbreakable:1b,AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:3,Operation:0,Slot:"chest",UUID:[I;232478239,1052352134,413411235,2144135141]},{AttributeName:"minecraft:generic.attack_speed",Amount:0.1,Operation:0,Slot:"chest",UUID:[I;1535245235,12312414,1417252341,123123124]}],conclude_ar:1b} 1

advancement grant @p only mikatanserver:event/ender_tier2/make_armor