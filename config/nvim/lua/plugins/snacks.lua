return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true, -- Global pour tous les pickers
        sources = {
          files = {
            hidden = true,
            ignored = false,
          },
          grep = {
            hidden = true,
            ignored = false,
          },
          explorer = {
            hidden = true,
            ignored = false,
          },
        },
      },
    },
  },
}
