return {
  {
    "Mofiqul/vscode.nvim",
    lazy = false, -- load immediately
    priority = 1000,
    config = function()
      require("vscode").setup({
        -- optional: customize style
        transparent = false,
        italic_comments = true,
        disable_nvimtree_bg = true,
      })
      vim.cmd("colorscheme vscode")
    end,
  },
}
