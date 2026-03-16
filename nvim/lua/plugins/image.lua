return {
  -- This plugin manages the "magick" dependency for you
  {
    "vhyrro/luarocks.nvim",
    priority = 1005,
    config = true,
  },
  {
    "3rd/image.nvim",
    dependencies = { "luarocks.nvim" },
    opts = {
      backend = "kitty",
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false, -- Set to false to see if it works!
          filetypes = { "markdown", "vimwiki", "org" },
          resolve_image_path = function(document_path, image_path, fallback)
            return "home/popchu/notes/assets/" .. image_path
          end,
        },
      },
      max_height_window_percentage = 50,
      window_overlap_clear_enabled = true,
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
    },
  },
}
