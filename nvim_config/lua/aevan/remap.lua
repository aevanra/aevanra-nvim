vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>/", "<cmd>ToggleTerm<cr>")
vim.keymap.set("n", "<leader>git", '<cmd>ToggleTerm direction="tab" <cr>')

vim.keymap.set("n", "<leader>rf", "<cmd>!ruff check --fix %:p <cr>")
vim.keymap.set("n", "<leader>fmt", "<cmd>!black %:p <cr>")
vim.keymap.set("n", "<leader>gp", "<cmd>!git push origin<cr>")
