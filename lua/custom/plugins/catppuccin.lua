return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'auto',
      background = {
        light = 'latte',
        dark = 'mocha',
      },
      -- transparent_background = true,
      term_colors = true,
      integrations = {
        treesitter_context = true,
        treesitter = true,
        native_lsp = true,
        lsp_trouble = true,
        mason = true,
      },
      -- ... rest of your existing options exactly as they are
    }
    vim.cmd.colorscheme 'catppuccin'
  end,
}
