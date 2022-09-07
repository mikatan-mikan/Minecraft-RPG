#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:elytra{display:{Name:'[{"text":"archangel elytra"}]'},AttributeModifiers:[{AttributeName:"generic.armor",Amount:4.0,Operation:0,Slot:"chest",UUID:[I;915581423,-105458275,-295946392,53698117]},{AttributeName:"generic.armor_toughness",Amount:3.0,Operation:0,Slot:"chest",UUID:[I;915581423,-105458275,-295946392,53698117]},{AttributeName:"generic.movement_speed",Amount:0.05,Operation:1,Slot:"chest",UUID:[I;2971240,5234520,12310,1412342340]}],Unbreakable:1b,CustomModelData:2,armor_angel:1b} 1

advancement grant @p only mikatanserver:customcrafter/armor/angel_elytra