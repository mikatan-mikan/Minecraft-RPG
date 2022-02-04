execute in mikatanserver:oremap if block -12 15 11 bedrock run setblock -12 15 11 red_concrete
execute in mikatanserver:oremap if block -12 15 11 air run setblock -12 15 11 bedrock
execute if block -12 15 11 bedrock as @a run schedule function mikatanserver:adddim/oremap_one/ruby/ore/28 200t