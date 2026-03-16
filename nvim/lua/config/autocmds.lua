-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- -- Quiet down Neovim for Markdown notes
--
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    -- 1. Turn off the red squiggly lines (Diagnostics)
    vim.diagnostic.disable(0)

    -- 2. Ensure folding is ready
    vim.opt_local.foldmethod = "expr"
    vim.opt_local.foldexpr = "v:lua.vim.treesitter.foldexpr()"

    -- 3. Set a 'conceal' level so headers look clean
    vim.opt_local.conceallevel = 2
  end,
})
