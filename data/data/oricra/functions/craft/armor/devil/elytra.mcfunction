#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:elytra{display:{Name:'[{"text":"devil elytra"}]'},AttributeModifiers:[{AttributeName:"generic.armor",Amount:2.0,Operation:0,Slot:"chest",UUID:[I;915581423,-105458275,-295946392,53698117]},{AttributeName:"generic.movement_speed",Amount:0.05,Operation:1,Slot:"chest",UUID:[I;2971240,5234520,12310,1412342340]}],Unbreakable:1b,CustomModelData:4,devil_ar:1b} 1

advancement grant @p only mikatanserver:event/volcano/make_devilar