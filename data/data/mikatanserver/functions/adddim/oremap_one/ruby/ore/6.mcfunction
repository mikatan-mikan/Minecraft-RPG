execute in mikatanserver:oremap if block 2 12 -8 bedrock run setblock 2 12 -8 red_concrete
execute in mikatanserver:oremap if block 2 12 -8 air run setblock 2 12 -8 bedrock
execute if block 2 12 -8 bedrock as @a run schedule function mikatanserver:adddim/oremap_one/ruby/ore/6 200t