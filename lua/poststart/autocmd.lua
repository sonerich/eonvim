vim.cmd [[
au InsertLeave * set rnu
au InsertEnter * set nornu
function TelescopeProject()
    PackerLoad telescope.nvim telescope-project.nvim
    lua require'telescope'.extensions.project.project{}
endfunction
]]
