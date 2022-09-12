
execute in mikatanserver:oremap if block 4 13 -3 air run function mikatanserver:adddim/oremap_one/ruby/ore/1
execute in mikatanserver:oremap if block 4 13 -4 air run function mikatanserver:adddim/oremap_one/ruby/ore/2
execute in mikatanserver:oremap if block 4 14 -3 air run function mikatanserver:adddim/oremap_one/ruby/ore/3
execute in mikatanserver:oremap if block 4 14 -4 air run function mikatanserver:adddim/oremap_one/ruby/ore/4
execute in mikatanserver:oremap if block 4 14 -5 air run function mikatanserver:adddim/oremap_one/ruby/ore/5
execute in mikatanserver:oremap if block 2 12 -8 air run function mikatanserver:adddim/oremap_one/ruby/ore/6
execute in mikatanserver:oremap if block 2 13 -8 air run function mikatanserver:adddim/oremap_one/ruby/ore/7
execute in mikatanserver:oremap if block 1 12 -9 air run function mikatanserver:adddim/oremap_one/ruby/ore/8
execute in mikatanserver:oremap if block -1 14 0 air run function mikatanserver:adddim/oremap_one/ruby/ore/9
execute in mikatanserver:oremap if block -1 15 0 air run function mikatanserver:adddim/oremap_one/ruby/ore/10
execute in mikatanserver:oremap if block -2 14 0 air run function mikatanserver:adddim/oremap_one/ruby/ore/11
execute in mikatanserver:oremap if block -2 15 0 air run function mikatanserver:adddim/oremap_one/ruby/ore/12
execute in mikatanserver:oremap if block -2 16 0 air run function mikatanserver:adddim/oremap_one/ruby/ore/13
execute in mikatanserver:oremap if block -4 13 1 air run function mikatanserver:adddim/oremap_one/ruby/ore/14
execute in mikatanserver:oremap if block -4 14 1 air run function mikatanserver:adddim/oremap_one/ruby/ore/15
execute in mikatanserver:oremap if block -4 13 2 air run function mikatanserver:adddim/oremap_one/ruby/ore/16
execute in mikatanserver:oremap if block -4 14 2 air run function mikatanserver:adddim/oremap_one/ruby/ore/17
execute in mikatanserver:oremap if block -10 10 3 air run function mikatanserver:adddim/oremap_one/ruby/ore/18
execute in mikatanserver:oremap if block -11 10 3 air run function mikatanserver:adddim/oremap_one/ruby/ore/19
execute in mikatanserver:oremap if block -10 10 2 air run function mikatanserver:adddim/oremap_one/ruby/ore/20
execute in mikatanserver:oremap if block -11 10 2 air run function mikatanserver:adddim/oremap_one/ruby/ore/21
execute in mikatanserver:oremap if block -13 14 -1 air run function mikatanserver:adddim/oremap_one/ruby/ore/22
execute in mikatanserver:oremap if block -13 15 -1 air run function mikatanserver:adddim/oremap_one/ruby/ore/23
execute in mikatanserver:oremap if block -14 14 0 air run function mikatanserver:adddim/oremap_one/ruby/ore/24
execute in mikatanserver:oremap if block -16 16 4 air run function mikatanserver:adddim/oremap_one/ruby/ore/25
execute in mikatanserver:oremap if block -16 17 4 air run function mikatanserver:adddim/oremap_one/ruby/ore/26
execute in mikatanserver:oremap if block -15 17 3 air run function mikatanserver:adddim/oremap_one/ruby/ore/27
execute in mikatanserver:oremap if block -12 15 11 air run function mikatanserver:adddim/oremap_one/ruby/ore/28
execute in mikatanserver:oremap if block -12 16 11 air run function mikatanserver:adddim/oremap_one/ruby/ore/29
execute in mikatanserver:oremap if block -13 15 11 air run function mikatanserver:adddim/oremap_one/ruby/ore/30
execute in mikatanserver:oremap if block -13 16 11 air run function mikatanserver:adddim/oremap_one/ruby/ore/31

clear @s red_concrete

execute as @s[scores={rubyselfcount=1..}] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:red_concrete",Count:1b}}] run give @s slime_ball{display:{Name:'[{"text":"ruby"}]'},CustomModelData:1} 1
execute as @s[scores={rubyselfcount=1..}] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:red_concrete",Count:1b}},predicate=mikatanserver:chance/0.40] run give @s slime_ball{display:{Name:'[{"text":"ruby"}]'},CustomModelData:1} 1
execute as @s[scores={rubyselfcount=1..}] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:red_concrete",Count:1b}},predicate=mikatanserver:chance/0.40] run give @s slime_ball{display:{Name:'[{"text":"ruby"}]'},CustomModelData:1} 1
execute as @s[scores={rubyselfcount=1..}] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:red_concrete",Count:1b}},predicate=mikatanserver:chance/0.40] run give @s slime_ball{display:{Name:'[{"text":"ruby"}]'},CustomModelData:1} 1


execute if entity @s[scores={rubyselfcount=1..}] at @s as @e[distance=..50,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:red_concrete",Count:1b}}] run kill @s
execute as @s[scores={rubyselfcount=1..}] run scoreboard players set @s rubyselfcount 0
