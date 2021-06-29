local map = vim.api.nvim_set_keymap

-- load telescope-project dependencies before running it
vim.cmd [[
function TelescopeProject()
    PackerLoad telescope.nvim telescope-project.nvim
    lua require'telescope'.extensions.project.project{}
endfunction
]]

vim.g.mapleader = ' ' -- space
map('n' , ' '  , ''      , {}  ) -- unmap space in normal mode
map('v' , ' '  , ''      , {}  ) -- unmap space in visual and select mode
map('i' , 'jk' , '<esc>' , {noremap=true})

map('n' , '<c-h>'      , '<c-w>h'      , {noremap=true}) -- window left
map('n' , '<c-j>'      , '<c-w>j'      , {noremap=true}) -- window down
map('n' , '<c-k>'      , '<c-w>k'      , {noremap=true}) -- window up
map('n' , '<c-l>'      , '<c-w>l'      , {noremap=true}) -- window right
map('n' , '<leader>wv' , '<cmd>vs<cr>' , {noremap=true}) -- vertical split
map('n' , '<leader>ws' , '<cmd>sp<cr>' , {noremap=true}) -- horizontal split

map('n' , '<leader>fs' , '<cmd>w<cr>' , {noremap=true}) -- save file in normal mode
map('i' , '<c-s>'      , '<cmd>w<cr>' , {noremap=true}) -- save file in insert mode

-- plugin
map('v' , '<leader><tab>' , ':Tabularize/'                     , {noremap=true}) -- prepare Tabularize command , to save time
map('n' , '<leader>fd'    , '<cmd>Telescope find_files<cr>'    , {noremap=true}) -- telescope fzf
map('n' , '<leader>fg'    , '<cmd>Telescope live_grep<cr>'     , {noremap=true}) --
map('n' , '<leader>fh'    , '<cmd>Telescope buffers<cr>'       , {noremap=true}) --
map('n' , '<leader>fw'    , '<cmd>Telescope help_tags<cr>'     , {noremap=true}) --
map('n' , '<leader>p'     , '<cmd>call TelescopeProject()<cr>' , {noremap=true}) --
