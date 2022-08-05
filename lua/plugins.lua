local packer = require 'packer'

packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/nvim-treesitter-textobjects'

    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'

    use { 'hrsh7th/nvim-cmp', requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline'
        }
    }

    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    use 'folke/tokyonight.nvim'

    use 'github/copilot.vim'
    use 'dense-analysis/ale'
    use 'airblade/vim-gitgutter'
    use { 'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim'} }
end)
