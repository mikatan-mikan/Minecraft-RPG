#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:elytra{display:{Name:'[{"text":"lava elytra"}]'},AttributeModifiers:[{AttributeName:"generic.armor",Amount:1.0,Operation:0,Slot:"chest",UUID:[I;915581423,-105458275,-295946392,53698117]},{AttributeName:"generic.armor",Amount:1.0,Operation:0,Slot:"chest",UUID:[I;915581423,-105458275,-295946392,53345340]},{AttributeName:"generic.armor_toughness",Amount:3,Operation:0,Slot:"chest",UUID:[I;2971240,5234520,12310,1412342340]}],Enchantments:[{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:protection",lvl:4s}],CustomModelData:3} 1

advancement grant @p only mikatanserver:event/nether/elytra_upgrade