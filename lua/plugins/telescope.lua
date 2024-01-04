return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    name = "telescope",
    config = function()
      require("telescope").setup{}
    end
}
