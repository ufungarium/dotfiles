return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        -- your configurations here
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  -- Configure LazyVim to use it
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
