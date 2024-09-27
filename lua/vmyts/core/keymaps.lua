vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap -- for conciseness

-- map.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
map.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- increment/decrement numbers
map.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
map.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
map.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
map.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
map.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
map.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

map.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
map.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
map.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
map.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
map.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Diagnostic keymaps
map.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
map.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
map.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
map.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

map.set("i", "<C-s>", "<Esc>:w<ENTER>", { desc = "Save changes in inline mode" })
map.set("n", "<C-s>", ":w<ENTER>", { desc = "Save changes in normal mode" })
-- map.set('i', '<C-s>', '<Esc><C-s>', { desc = 'Save changes in inline mode' })
map.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })
map.set("n", "<leader>qq", ":qa<ENTER>", { desc = "Quit neovim" })
