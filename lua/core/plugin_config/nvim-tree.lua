-- apparently these next 2 lines is supposed to make netrw fuck off.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require ("nvim-tree").setup() -- i think this merely initializes the plugin. i have no actual clue what this is supposed to do.

-- nvim-tree keybindings beyond this line
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>') -- Sets Control+N to toggle nvim-tree find file.
