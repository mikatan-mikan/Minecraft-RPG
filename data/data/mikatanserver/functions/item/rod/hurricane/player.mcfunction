# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAIwAcA7AIZz0BGAnALT0DMlz7ALJS4AGTv1Ip2AVgBstSi2qkATCOZgCAO3oBbBMkBhigAJKGsDHoZdAZyTgUAe0KaISZcIIo4LuBjtgAN3psQn1wAA8kDzAoKIBfOIIrUjRCW0QpAmsIS1dEaLhsbDQYa31KYWiMBxyIfWi0awBRIpKypoBHQmDsKABlCy9yRAAzYLKEgF0gA_3
# 円 1
particle sweep_attack ~0 ~ ~-5 0.2 0 0.2 1 5
particle sweep_attack ~1.54508 ~ ~-4.75528 0.2 0 0.2 1 5
particle sweep_attack ~2.93893 ~ ~-4.04508 0.2 0 0.2 1 5
particle sweep_attack ~4.04508 ~ ~-2.93893 0.2 0 0.2 1 5
particle sweep_attack ~4.75528 ~ ~-1.54508 0.2 0 0.2 1 5
particle sweep_attack ~5 ~ ~0 0.2 0 0.2 1 5
particle sweep_attack ~4.75528 ~ ~1.54508 0.2 0 0.2 1 5
particle sweep_attack ~4.04508 ~ ~2.93893 0.2 0 0.2 1 5
particle sweep_attack ~2.93893 ~ ~4.04508 0.2 0 0.2 1 5
particle sweep_attack ~1.54508 ~ ~4.75528 0.2 0 0.2 1 5
particle sweep_attack ~0 ~ ~5 0.2 0 0.2 1 5
particle sweep_attack ~-1.54508 ~ ~4.75528 0.2 0 0.2 1 5
particle sweep_attack ~-2.93893 ~ ~4.04508 0.2 0 0.2 1 5
particle sweep_attack ~-4.04508 ~ ~2.93893 0.2 0 0.2 1 5
particle sweep_attack ~-4.75528 ~ ~1.54508 0.2 0 0.2 1 5
particle sweep_attack ~-5 ~ ~0 0.2 0 0.2 1 5
particle sweep_attack ~-4.75528 ~ ~-1.54508 0.2 0 0.2 1 5
particle sweep_attack ~-4.04508 ~ ~-2.93893 0.2 0 0.2 1 5
particle sweep_attack ~-2.93893 ~ ~-4.04508 0.2 0 0.2 1 5
particle sweep_attack ~-1.54508 ~ ~-4.75528 0.2 0 0.2 1 5

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAIwAcA7AIZz0BGAnALT0DMlz7ALJS4AGTv1Ip2AVgBstSi2qkATCOZgCAO3oBbBMkBhigAJKGsDHoZdAZyTgUAe0KaISZcIIo4LuBjtgAN3psQn1wAA8kDzAoKIBfOIIrUjRCW0QpAmsIS1dEaLhsbDQYa31KYWiMBxyIfWi0awBRIpKypoBHQmDsKABlCy9yRAAzYLKEgF0gA_3
# 円 1
effect give @e[type=#mikatanserver:mobs,distance=..5] levitation 1 20

particle sweep_attack ~ ~ ~ 0.2 0.5 0.2 1 5
effect give @s resistance 1 0

scoreboard players add @s HurricaneRodTimer 1
execute unless score @s HurricaneRodTimer matches ..40 run function mikatanserver:item/rod/hurricane/end
execute if score @s HurricaneRodTimer matches ..40 run schedule function mikatanserver:item/rod/hurricane/loop 1t