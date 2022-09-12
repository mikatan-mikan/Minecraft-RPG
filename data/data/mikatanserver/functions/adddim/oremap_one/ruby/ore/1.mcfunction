execute in mikatanserver:oremap if block 4 13 -3 bedrock run setblock 4 13 -3 red_concrete
execute in mikatanserver:oremap if block 4 13 -3 air run setblock 4 13 -3 bedrock
execute if block 4 13 -3 bedrock as @a run schedule function mikatanserver:adddim/oremap_one/ruby/ore/1 200t