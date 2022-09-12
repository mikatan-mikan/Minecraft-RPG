execute in mikatanserver:oremap if block -13 15 -1 bedrock run setblock -13 15 -1 red_concrete
execute in mikatanserver:oremap if block -13 15 -1 air run setblock -13 15 -1 bedrock
execute if block -13 15 -1 bedrock as @a run schedule function mikatanserver:adddim/oremap_one/ruby/ore/23 200t