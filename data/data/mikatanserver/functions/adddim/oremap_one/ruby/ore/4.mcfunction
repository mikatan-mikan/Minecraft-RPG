execute in mikatanserver:oremap if block 4 14 -4 bedrock run setblock 4 14 -4 red_concrete
execute in mikatanserver:oremap if block 4 14 -4 air run setblock 4 14 -4 bedrock
execute if block 4 14 -4 bedrock as @a run schedule function mikatanserver:adddim/oremap_one/ruby/ore/4 200t