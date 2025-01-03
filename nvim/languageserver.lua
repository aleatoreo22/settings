-- Configuração do LSP para Go
require 'lspconfig'.gopls.setup {}

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

