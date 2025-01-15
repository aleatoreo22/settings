-- Configuracao Treesitter
require('nvim-treesitter.configs').setup {
    ensure_installed = { "go", "lua", "javascript", "html", "css", "json", "svelte" }, -- Linguagens desejadas
    sync_install = false,                                                              -- Instalação síncrona ou assíncrona
    auto_install = true,                                                               -- Instalar linguagens automaticamente
    ignore_install = {},                                                               -- Lista de linguagens a ignorar (deixe vazio se nenhuma)
    modules = {},                                                                      -- Configuração para módulos adicionais (deixe vazio se não souber)
    highlight = {
        enable = true,                                                                 -- Ativar realce de sintaxe
        additional_vim_regex_highlighting = false,                                     -- Evitar conflitos com o Vim padrão
    },
    indent = {
        enable = true, -- Ativar indentação inteligente
    },
}


-- Configuração do LSP para Go
require 'lspconfig'.gopls.setup {}

require('go').setup {
    lsp_cfg = true, -- Usa configurações padrão do LSP
    lsp_on_attach = true,
}


-- Configuração do LSP para C#
require 'lspconfig'.omnisharp.setup {
    cmd = { "omnisharp" },
    root_dir = require 'lspconfig'.util.root_pattern(".git", "global.json", "*.sln", "*.csproj"),
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

local lspconfig = require('lspconfig')

lspconfig.svelte.setup({
    on_attach = function(client, bufnr)
    end,
    capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
    settings = {
        svelte = {
            plugin = {
                svelte = { enable = true },
                typescript = { enable = true },
            }
        }
    }
})

lspconfig.ts_ls.setup({
    on_attach = function(client, bufnr)
        -- Suas configurações de on_attach existentes aqui, se houver
        print("TypeScript LSP iniciado!")
    end,
    capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

lspconfig.cssls.setup({
    settings = {
        css = {
            lint = {
                unknownAtRules = "ignore"
            },
        },
        scss = {
            lint = {
                unknownAtRules = "ignore"
            },
        },
        less = {
            lint = {
                unknownAtRules = "ignore"
            },
        },
    },
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
})

lspconfig.html.setup({
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    filetypes = { "html", "svelte" }, -- Adiciona suporte para Svelte
})
