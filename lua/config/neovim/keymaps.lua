-- Keymaps --
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = ' '

-- Normal --

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Remap save command
keymap('n', '<Leader>w', ':write<CR>',{})

-- Remap quit command
keymap('n', '<Leader>q', ':bd<CR>',{})


-- Center the view when search something in the file
keymap('n', 'n', 'nzzzv', {})
keymap('n', 'N', 'Nzzzv', {})

-- Insert --

-- Remap for ESC key
keymap("i", "jk", "<ESC>", {})

-- Visual --

--Still in visual mode when indenting code
keymap('v', '<', '<gv', {})
keymap('v', '>', '>gv', {})


-- Telescope keymaps
keymap('n', '<Leader>ff', ':Telescope find_files<CR>',{})
keymap('n', '<Leader>fg', ':Telescope live_grep<CR>',{})
keymap('n', '<Leader>fb', ':Telescope buffers<CR>',{})
keymap('n', '<Leader>fh', ':Telescope help_tags<CR>',{})

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

vim.cmd[[vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>]]
