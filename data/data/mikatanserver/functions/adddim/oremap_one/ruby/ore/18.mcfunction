execute in mikatanserver:oremap if block -10 10 3 bedrock run setblock -10 10 3 red_concrete
execute in mikatanserver:oremap if block -10 10 3 air run setblock -10 10 3 bedrock
execute if block -10 10 3 bedrock as @a run schedule function mikatanserver:adddim/oremap_one/ruby/ore/18 200t