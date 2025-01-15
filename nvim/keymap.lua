vim.api.nvim_set_keymap("v", "(", "<Esc><i(<Esc>>a)<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "[", "<Esc><i[<Esc>>a]<Esc>", { noremap = true, silent = true })

--Atalhos
-- Atalho para formatar o código
vim.api.nvim_set_keymap('n', '<leader>i', ':lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })

-- vim.api.nvim_set_keymap('n', '<C-S-i>', ':lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })
-- Mapeamento para ir para a definição da função
vim.api.nvim_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gD', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>f', ':Files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':e %:h<CR>', { noremap = true, silent = true })

--Autopairs visual mode
vim.api.nvim_set_keymap("v", "{", "<Esc>`<i{<Esc>`>a}<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "(", "<Esc>`<i(<Esc>`>a)<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "[", "<Esc>`<i[<Esc>`>a]<Esc>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<F5>', ':call vimspector#Launch()<CR>', {})
vim.api.nvim_set_keymap('n', '<F9>', ':call vimspector#ToggleBreakpoint()<CR>', {})
vim.api.nvim_set_keymap('n', '<F10>', ':call vimspector#StepOver()<CR>', {})
vim.api.nvim_set_keymap('n', '<F11>', ':call vimspector#StepInto()<CR>', {})
vim.api.nvim_set_keymap('n', '<F12>', ':call vimspector#StepOut()<CR>', {})

vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>Y', 'gg"+yG', { noremap = true, silent = true })

