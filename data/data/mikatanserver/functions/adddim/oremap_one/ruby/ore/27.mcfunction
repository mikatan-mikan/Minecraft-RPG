execute in mikatanserver:oremap if block -15 17 3 bedrock run setblock -15 17 3 red_concrete
execute in mikatanserver:oremap if block -15 17 3 air run setblock -15 17 3 bedrock
execute if block -15 17 3 bedrock as @a run schedule function mikatanserver:adddim/oremap_one/ruby/ore/27 200t