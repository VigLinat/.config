vim.cmd [[
if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
]]

vim.cmd [[
if has('termguicolors')
    set termguicolors
endif
]]

-- terafox is great and all but THIS!!
vim.cmd [[ colorscheme saturnite ]]
-- Light variant
-- vim.cmd [[ colorscheme lightning ]]
-- THE MATRIX
-- vim.cmd [[ colorscheme thematrix ]]
