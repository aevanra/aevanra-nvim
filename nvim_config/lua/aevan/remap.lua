vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>cv", vim.cmd.qall)
vim.keymap.set("n", "<leader>cvf", "<cmd>qall!<cr>")
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>wf", "<cmd>w!<cr>")
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>qf", "<cmd>q!<cr>")
vim.keymap.set("n", "<leader>qa", "<cmd>qall<cr>")
vim.keymap.set("n", "<leader>qaf", "<cmd>qall!<cr>")
vim.keymap.set("n", "<leader>wq", vim.cmd.wq)
vim.keymap.set("n", "<leader>wqf", "<cmd>wq!<cr>")

-- Toggle Term
vim.keymap.set("n", "<leader>/", "<cmd>ToggleTerm<cr>")
vim.keymap.set("n", "<leader>git", '<cmd>ToggleTerm direction="tab" <cr>')

-- Python formatting
vim.keymap.set("n", "<leader>rf", "<cmd>!ruff check --fix %:p <cr>")
vim.keymap.set("n", "<leader>fmt", "<cmd>!black %:p <cr>")

-- Save and run python file
vim.keymap.set('n', '<leader>py', ":update<bar>!python %<CR>")

-- Git push
vim.keymap.set("n", "<leader>gp", "<cmd>!git push origin<cr>")

--Find and replace under cursor
vim.keymap.set("n", "<leader>fr", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Close Buffer
vim.keymap.set('n', '<leader>bc', ":bd<CR>")

-- Copilot Toggle
vim.keymap.set('n', '<leader>cpe', ":Copilot enable<CR>")
vim.keymap.set('n', '<leader>cpd', ":Copilot disable<CR>")

-- Window Creation
vim.keymap.set('n', '<leader>nw', '<C-w>v')
vim.keymap.set('n', '<leader>nwb', '<C-w>s')

-- Window Movement
vim.keymap.set('n', '<leader>l', '<C-w>l')
vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>j', '<C-w>j')
vim.keymap.set('n', '<leader>k', '<C-w>k')

--LSP Refresh
vim.keymap.set('n', '<leader>lsp', ':LspRestart<CR>')
