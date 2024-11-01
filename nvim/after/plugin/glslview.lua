-- Glsl view: supposedly a glsl viewer for frag and vert
-- ############################################################################################
-- How to make it work? no idea, the wiki said that running ":GlslView -w 128 -h 256" was enough but..... xd


require('glslView').setup {
  viewer_path = 'glslViewer',
  args = { '-l' },
}
