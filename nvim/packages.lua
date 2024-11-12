require('packer').startup(function(use)
    use 'kyazdani42/nvim-web-devicons'
    use 'wbthomason/packer.nvim' -- Gerenciador de plugins
    use 'doums/darcula'          -- Plugin do tema Darcula
    use 'wbthomason/packer.nvim' -- Gerenciador de plugins
    use 'doums/darcula'          -- Tema Darcula
    use 'hrsh7th/nvim-cmp'       -- Autocompletar
    use 'hrsh7th/cmp-nvim-lsp'   -- Fontes de autocompletar para LSP
    use 'hrsh7th/cmp-buffer'     -- Autocompletar baseado no buffer
    use 'hrsh7th/cmp-path'       -- Autocompletar para caminhos de arquivos
    use 'hrsh7th/cmp-cmdline'    -- Autocompletar para a linha de comando
    use 'hrsh7th/cmp-nvim-lua'   -- Autocompletar para Lua
    use 'hrsh7th/cmp-nvim-lsp'   -- Autocompletar para LSP
    use 'mg979/vim-visual-multi' -- Multi Cursor
    use 'junegunn/fzf'           --Search bar arquivo
    use 'junegunn/fzf.vim'       --Search bar arquivo
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'
    use 'wbthomason/packer.nvim' -- Packer pode gerenciar a si mesmo
    use 'windwp/nvim-autopairs'  -- Plugin para fechar automaticamente parênteses, colchetes e chaves
    use {
        "kylechui/nvim-surround",

        config = function()
            require("nvim-surround").setup({})
        end
    }
    use "puremourning/vimspector"
end)
