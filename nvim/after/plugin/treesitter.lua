-- Treesitter: highlights and other stuff...
-- #######################################################################################


-- Here we init and edit treesitter
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = {"ruby", "r", "python", "java", "javascript", "typescript", "rust", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "css", "html", "glsl", "toml" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- Here we set the higlighting
  highlight = {
    enable = true,

    -- Higlighits syntax
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
