#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:netherite_leggings{display:{Name:'[{"text":"devil leggings"}]'},AttributeModifiers:[{AttributeName:"generic.armor",Amount:8.0,Operation:0,Slot:"legs",UUID:[I;915581423,-105458275,-295946392,53618119]},{AttributeName:"generic.armor_toughness",Amount:2,Operation:0,Slot:"legs",UUID:[I;-212372333,307371239,101113870,96471230]}],Unbreakable:1b,devil_ar:1b} 1

advancement grant @p only mikatanserver:event/volcano/make_devilar