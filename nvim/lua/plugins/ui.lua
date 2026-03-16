return {
  -- 1. This makes the headers look like bars/banners
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      max_file_size = 1000.0,
      render_modes = true,
      heading = {
        -- Enable the colored background bars
        background = { enabled = true },
        -- Custom icons: I chose some sleek ones, but swap them if you want!
        icons = { "☆", " ★ˏˋ°•*⁀➷ ", "⋆˙✰ ", "➶｡･:*˚:✧｡❀ ", "⊱✿⊰ ", " " },
      },
      -- This makes bullet points look like nice dots
      bullet = {
        icons = { "✧", "*", "✦", "◇" },
      },
      -- This makes checkboxes [ ] look like real icons
      checkbox = {
        enabled = true,
        unchecked = { icon = "󰄱 " },
        checked = { icon = "󰱒 " },
      },
    },
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
  },

  -- 2. Zen Mode (Centered, distraction-free)
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        width = 0.85, -- Window width
        options = {
          number = false,
          relativenumber = false,
          foldcolumn = "0",
          list = false, -- Hides "invisible" characters
        },
      },
      plugins = {
        -- This dims the lines you aren't typing on
        twilight = { enabled = true },
      },
    },
  },
}
