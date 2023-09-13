require("telescope").load_extension("git_worktree")
-- vim.keymap.set("n", "<leader>w", [[:lua require("git-worktree").switch_worktree("")<Left><Left>]])
vim.keymap.set("n", "<leader>w", function()
    vim.cmd([[lua require('telescope').extensions.git_worktree.git_worktrees()]])
end)
