return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    config = function()
      -- Configure les mappings pour imiter VS Code
      vim.g.VM_maps = {
        ["Find Under"] = "<C-d>", -- Sélectionner l'occurrence suivante (comme Ctrl+D)
        ["Find Subword Under"] = "<C-d>", -- Même chose pour le mot sous le curseur
      }
      -- Optionnel : désactiver les mappings par défaut si conflit
      -- vim.g.VM_default_mappings = 0
    end,
  },
}
