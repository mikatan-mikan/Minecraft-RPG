#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:mending",lvl:1s},{id:"minecraft:smite",lvl:1s}],display:{Name:'[{"text":"Aspect of the Dragon","color": "gold"}]',Lore:['[{"text": "Ability: Dragon Rage","color": "gold","italic": false},{"text": " RIGHT CLICK","color": "yellow","bold": true,"italic": false}]','[{"text": "All Monsters in front of you","color": "gray","italic": false,"bold": false}]','[{"text": "take","color": "gray","italic": false},{"text": " 20","color": "green","italic": false},{"text": "(If ender armor full, +20)damage. Hit","color": "gray","italic": false}]','[{"text": "monsters take large knockback.","color": "gray","italic": false}]','[{"text": "Mana Cost:","color": "dark_gray","italic": false},{"text": "100","color": "dark_aqua"}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 8","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:64,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:8,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}],aspect_of_the_dragon:1b} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/rod_and_sword/aspect_of_the_dragon