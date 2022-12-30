##武器への攻撃力のセット
data modify block ~ ~ ~ Items[{Slot:4b}].tag.AttributeModifiers[{UUID:[I;0,1000,0,1000]}].Operation set value 0
data modify block ~ ~ ~ Items[{Slot:4b}].tag.AttributeModifiers[{UUID:[I;0,1000,0,1000]}].Slot set value "mainhand"
data modify block ~ ~ ~ Items[{Slot:4b}].tag.AttributeModifiers[{UUID:[I;0,1000,0,1000]}].AttributeName set value "minecraft:generic.attack_damage"
data modify block ~ ~ ~ Items[{Slot:4b}].tag.AttributeModifiers[{UUID:[I;0,1000,0,1000]}].Amount set from storage mikatanserver:weapon_lore Damage_Num
data remove storage mikatanserver:weapon_lore Damage_Num