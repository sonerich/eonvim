vim.cmd 'packadd packer.nvim'
vim.cmd 'au BufWritePost plugins.lua PackerCompile'

return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}
    use {'godlygeek/tabular', opt = true, cmd = {'Tabularize', 'Tab'}}
    use {'nvim-telescope/telescope.nvim', opt=true,
         cmd={'Telescope'},
  	 requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
        }
    use {'nvim-telescope/telescope-project.nvim', opt=true}
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'
    require'lspinstall'.setup() -- important

    local servers = require'lspinstall'.installed_servers()
    for _, server in pairs(servers) do
  	require'lspconfig'[server].setup{}
    end
end)
