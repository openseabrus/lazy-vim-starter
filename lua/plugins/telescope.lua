local builtin = require("telescope.builtin")

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    -- { "<leader>/", false },
    {
      "<leader>sf",
      function()
        builtin.find_files()
      end,
      desc = "[S]earch [F]iles",
    },
    {
      "<leader><leader>",
      function()
        builtin.buffers()
      end,
      desc = "[ ] Find existing buffers",
    },
    {
      "<leader>s.",
      function()
        builtin.oldfiles()
      end,
      desc = "[S]earch Recent Files",
    },
    {
      "<leader>s/",
      function()
        builtin.current_buffer_fuzzy_find(
          require("telescope.themes").get_dropdown({ winblend = 10, previewer = false })
        )
      end,
      desc = "[/] Fuzzily search in current buffer",
    },
  },
}
