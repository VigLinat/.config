require 'nvim-treesitter.install'.compilers = { "clang" }
require'nvim-treesitter.configs'.setup{
    ensure_installed = {'c', 'cpp', 'rust', 'lua', 'javascript', 'typescript', 'python', 'java', 'haskell'},

    sync_install = false, 

    auto_install = false, 

    highlight = {
        enable = true, 
    },

    indent = {
        enable = false
    }
}
