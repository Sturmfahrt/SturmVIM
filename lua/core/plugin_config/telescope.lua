require('telescope').setup()
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<c-p>', builtin.find_files, {}) --CTRL+P. this is to find and insert keywords from any of of the files using telescope. if it finds only one match it will just simply autocomplete it, if there is multiple matches you can select the appropriate one and it will autocomplete. 
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {}) --double press SPACE. to find specific content in any of the files so that you can jump to that file, or preview its contents using telescope.
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {}) --SPACE then F then G. this just triggers the grep function in telescope
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {}) --SPACE then F then H. this triggers the help tag search function in telescope
