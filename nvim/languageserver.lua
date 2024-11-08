-- Configuração do LSP para Go
require 'lspconfig'.gopls.setup {}

-- Configuração do LSP para C#
require'lspconfig'.omnisharp.setup{
    cmd = { "omnisharp" },
    root_dir = require'lspconfig'.util.root_pattern(".git", "global.json", "*.sln", "*.csproj"),
}
-- require 'lspconfig'.omnisharp.setup {}

require 'lspconfig'.lua_ls.setup {
    settings = {
        Lua = {
            format = {
                enable = true, -- Habilita o formatador do LSP
            },
            runtime = {
                version = 'LuaJIT', -- Versão do runtime Lua
            },
            diagnostics = {
                globals = { 'vim' }, -- Reconhece 'vim' como global
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
}

