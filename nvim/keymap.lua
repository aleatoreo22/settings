
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


