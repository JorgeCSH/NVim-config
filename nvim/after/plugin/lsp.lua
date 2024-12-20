-- LSP ZERO: Autocompletetion (among others)
-- #######################################################################################


-- We call the package as a local variable.
local lsp_zero = require('lsp-zero')


-- Function for the remaps we can use to interact with the suggestions.
local lsp_attach = function(client, bufnr)
  local opts = {buffer = bufnr}
  vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
  vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
  vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
  vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
  vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
  vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
  vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
  vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
  vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
  vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
end

-- Highlights
lsp_zero.extend_lspconfig({
  sign_text = true,
  lsp_attach = lsp_attach,
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
})


-- Here we call the servers with the code info.
-- Gleam (default).
require('lspconfig').gleam.setup({})
-- Rust (default and...why not?)
require('lspconfig').rust_analyzer.setup({})
-- Python
require('lspconfig').pyright.setup({})
-- glsl
require'lspconfig'.glsl_analyzer.setup{}
-- lua (somehow it didn't come with nvim)
require'lspconfig'.lua_ls.setup{}



-- Autocompletion setup
local cmp = require('cmp')
cmp.setup({
  sources = {
    {name = 'nvim_lsp'}
  },
  snippet = {
    expand = function(args)
      -- You need Neovim v0.10 to use vim.snippet
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({}),
})



