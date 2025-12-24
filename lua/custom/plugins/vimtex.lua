return {
  'lervag/vimtex',
  lazy = false,
  init = function()
    vim.g.vimtex_view_method = 'skim'
    vim.g.vimtex_compiler_latexmk = {
      continuous = 1,
      out_dir = 'out',
    }
    vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
    --quickfix settings
    vim.g.vimtex_quickfix_open_on_warning = 0 --  don't open quickfix if there are only warnings
    vim.g.vimtex_quickfix_ignore_filters =
      { 'Underfull', 'Overfull', 'LaTeX Warning: .\\+ float specifier changed to', 'Package hyperref Warning: Token not allowed in a PDF string' }
    -- vim.g.vimtex_fold_enabled = 1
    -- vim.g.vimtex_indent_enabled = 1
  end,
}
