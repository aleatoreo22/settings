-- Obtém o diretório do script principal
local script_dir = debug.getinfo(1, "S").source:match("@(.*[\\/])") or "./"

-- Adiciona o diretório do script ao package.path
package.path = script_dir .. "?.lua;" .. package.path

require("./packages")
require("keymap")
require("autocomplete")
require("languageserver")

vim.o.number = true
vim.o.relativenumber = true
vim.o.ignorecase = true -- Ativa a pesquisa sem distinção entre maiúsculas e minúsculas

-- Identacao
vim.o.tabstop = 4        -- Define o número de espaços que uma tabulação ocupa
vim.o.shiftwidth = 4     -- Define o número de espaços usados para a indentação
vim.o.expandtab = true   -- Usa espaços no lugar de tabs
vim.o.smartindent = true -- Habilita indentação inteligente

require('nvim-autopairs').setup {}

-- Aplica o tema
vim.cmd('colorscheme darcula')

-- Salvar automaticamente ao sair do modo de inserção
vim.api.nvim_create_autocmd("InsertLeave", {
    callback = function()
        vim.cmd("update")
    end
})

-- Salvar automaticamente ao mudar de buffer
vim.api.nvim_create_autocmd("BufLeave", {
    callback = function()
        vim.cmd("update")
    end
})

vim.cmd([[
   highlight Normal guibg=NONE ctermbg=NONE
   highlight NonText guibg=NONE ctermbg=NONE
]])

--Cores autocompletar
vim.cmd([[
  highlight! CmpItemAbbr guifg=#C5C8C6
  highlight! CmpItemAbbrDeprecated guifg=#7C7C7C guibg=NONE gui=strikethrough
  highlight! CmpItemAbbrMatch guifg=#569CD6 guibg=NONE gui=bold
  highlight! CmpItemAbbrMatchFuzzy guifg=#569CD6 guibg=NONE gui=bold
  highlight! CmpItemKindVariable guifg=#9CDCFE guibg=NONE
  highlight! CmpItemKindInterface guifg=#9CDCFE guibg=NONE
  highlight! CmpItemKindText guifg=#9CDCFE guibg=NONE
  highlight! CmpItemKindFunction guifg=#C586C0 guibg=NONE
  highlight! CmpItemKindMethod guifg=#C586C0 guibg=NONE
  highlight! CmpItemKindKeyword guifg=#D4D4D4 guibg=NONE
]])
