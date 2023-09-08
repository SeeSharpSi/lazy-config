return {
    {
    "rose-pine/neovim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme rose-pine]])
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        vim.cmd([[TSUpdate]])
    end,
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
      "nvim-treesitter/nvim-treesitter-context"
  },
  {
    "ThePrimeagen/harpoon",
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
      "williamboman/mason.nvim"
  },
  {
      "neovim/nvim-lspconfig"
  },
  {
      "ThePrimeagen/git-worktree.nvim"
  },
  {
      "tpope/vim-fugitive"
  },
}
