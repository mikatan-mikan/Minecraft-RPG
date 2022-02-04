execute in mikatanserver:oremap if block -1 15 0 bedrock run setblock -1 15 0 red_concrete
execute in mikatanserver:oremap if block -1 15 0 air run setblock -1 15 0 bedrock
execute if block -1 15 0 bedrock as @a run schedule function mikatanserver:adddim/oremap_one/ruby/ore/10 200t