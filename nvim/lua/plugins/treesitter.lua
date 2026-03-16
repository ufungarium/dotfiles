return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = {
        enable = true,
        -- Disable this if it's too slow, but try keeping it 'false' first
        disable = function(lang, buf)
          local max_filesize = 100 * 1024 -- 100 KB (Adjust this up if needed)
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return false -- Keep it enabled even for larger files
          end
        end,
      },
    },
  },
}
