
execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot: 0b, id: "minecraft:slime_ball", Count: 64b, tag: {CustomModelData: 6}}, {Slot: 1b, id: "minecraft:apple", Count: 16b, tag: {CustomModelData: 2}}, {Slot: 2b, id: "minecraft:slime_ball", Count: 64b, tag: {CustomModelData: 6}}, {Slot: 3b, id: "minecraft:apple", Count: 16b, tag: {CustomModelData: 2}}, {Slot: 4b, id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: [I; 573135134, 1474645653, -1334357495, 1868118749]}}}, {Slot: 5b, id: "minecraft:apple", Count: 16b, tag: {CustomModelData: 2}}, {Slot: 6b, id: "minecraft:slime_ball", Count: 64b, tag: {CustomModelData: 6}}, {Slot: 7b, id: "minecraft:apple", Count: 16b, tag: {CustomModelData: 2}}, {Slot: 8b, id: "minecraft:slime_ball", Count: 64b, tag: {CustomModelData: 6}}]} run function orispskiller:craft/red
execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot: 0b, id: "minecraft:slime_ball", Count: 64b, tag: {CustomModelData: 7}}, {Slot: 1b, id: "minecraft:apple", Count: 16b, tag: {CustomModelData: 2}}, {Slot: 2b, id: "minecraft:slime_ball", Count: 64b, tag: {CustomModelData: 7}}, {Slot: 3b, id: "minecraft:apple", Count: 16b, tag: {CustomModelData: 2}}, {Slot: 4b, id: "minecraft:nautilus_shell", Count: 1b, tag: {CustomModelData: 5}}, {Slot: 5b, id: "minecraft:apple", Count: 16b, tag: {CustomModelData: 2}}, {Slot: 6b, id: "minecraft:slime_ball", Count: 64b, tag: {CustomModelData: 7}}, {Slot: 7b, id: "minecraft:apple", Count: 16b, tag: {CustomModelData: 2}}, {Slot: 8b, id: "minecraft:slime_ball", Count: 64b, tag: {CustomModelData: 7}}]} run function orispskiller:craft/pink
# execute if block ~ ~ ~ dropper[facing=up]{Items:[RECIPE]} run function orispskiller:craft/
# execute if block ~ ~ ~ dropper[facing=up]{Items:[RECIPE]} run function orispskiller:craft/


#回転したアイテムを元に戻す
data merge entity @s {ItemRotation:0b}

item modify block ~ ~1 ~ container.4 