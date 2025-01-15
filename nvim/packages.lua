require('packer').startup(function(use)
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lua/plenary.nvim'
    use 'wbthomason/packer.nvim' -- Gerenciador de plugins
    use 'doums/darcula'          -- Tema Darcula
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'hrsh7th/nvim-cmp'       -- Autocompletar
    use 'hrsh7th/cmp-buffer'     -- Autocompletar baseado no buffer
    use 'hrsh7th/cmp-path'       -- Autocompletar para caminhos de arquivos
    use 'hrsh7th/cmp-cmdline'    -- Autocompletar para a linha de comando
    use 'hrsh7th/cmp-nvim-lua'   -- Autocompletar para Lua
    use 'hrsh7th/cmp-nvim-lsp'   -- Autocompletar para LSP
    use 'hrsh7th/cmp-vsnip'      -- Para snippets opcionais
    use 'hrsh7th/vim-vsnip'
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
    use 'evanleck/vim-svelte'
    use 'pangloss/vim-javascript'
    use 'othree/html5.vim'
    use 'Jezda1337/cmp_bootstrap'
    use 'ray-x/go.nvim'
	use 'nvim-treesitter/nvim-treesitter'
end)
