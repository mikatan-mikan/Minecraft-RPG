#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:netherite_axe{display:{Name:'[{"text":"ruby axe"}]'},CustomModelData:1,Enchantments:[{id:"unbreaking",lvl:3}],AttributeModifiers:[{AttributeName:"generic.max_health",Amount:1.0,Operation:0,Slot:"mainhand",UUID:[I;566469949,-911470697,-569968473,-52151]}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/tool/rubycraft