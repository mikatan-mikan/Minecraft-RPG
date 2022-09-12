execute in mikatanserver:oremap if block -11 10 2 bedrock run setblock -11 10 2 red_concrete
execute in mikatanserver:oremap if block -11 10 2 air run setblock -11 10 2 bedrock
execute if block -11 10 2 bedrock as @a run schedule function mikatanserver:adddim/oremap_one/ruby/ore/21 200t