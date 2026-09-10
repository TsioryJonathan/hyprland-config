return {
  -- XML Language Server for pom.xml
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lemminx = {},
        java_language_server = { enabled = false },
      },
    },
  },

  -- Ensure tools are installed via Mason
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed or {}, {
        "lemminx",
      })
    end,
  },
}
