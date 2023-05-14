-- PLUGINS 
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'nvim-tree/nvim-tree.lua'

    -- Colors & UI 
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'fcpg/vim-farout'
    Plug 'EdenEast/nightfox.nvim'
    Plug 'luisiacc/the-matrix.nvim'
    Plug 'wimstefan/Lightning'
    Plug 'habamax/vim-saturnite'

    -- Editing
    Plug 'cohama/lexima.vim'
    Plug ('kylechui/nvim-surround', {['tag'] = '*'})
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'lervag/vimtex'

    Plug 'honza/vim-snippets'
    Plug 'dcampos/nvim-snippy'
 
    Plug 'neovim/nvim-lspconfig'
    Plug ('nvim-treesitter/nvim-treesitter', {['do'] = 'TSUpdate'})

    -- nvim-cmp
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'dcampos/cmp-snippy'
    Plug 'tzachar/fuzzy.nvim'
    Plug 'tzachar/cmp-fuzzy-buffer'

    -- Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim' 
    Plug ('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' })
vim.call('plug#end')
