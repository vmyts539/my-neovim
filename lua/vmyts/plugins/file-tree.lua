-- return {
--   'nvim-neo-tree/neo-tree.nvim',
--   version = '*',
--   dependencies = {
--     'nvim-lua/plenary.nvim',
--     'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
--     'MunifTanjim/nui.nvim',
--   },
--   cmd = 'Neotree',
--   keys = {
--     { '<leader>ee', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
--   },
--   opts = {
--     filesystem = {
--      window = {
--         mappings = {
--           ['\\'] = 'close_window',
--         },
--       },
--     },
--   },
-- }
return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")
		nvimtree.setup({
			view = {
				width = 30,
				--   relativenumber = true,
			},
			hijack_cursor = true,
			update_focused_file = {
				enable = true,
			},
			-- change folder arrow icons
			renderer = {
				indent_markers = {
					enable = true,
				},
				-- icons = {
				--   glyphs = {
				--     folder = {
				--       arrow_closed = "", -- arrow when folder is closed
				--       arrow_open = "", -- arrow when folder is open
				--     },
				--   },
				-- },
			},
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
				dotfiles = true,
			},
			git = {
				ignore = false,
			},
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
		keymap.set(
			"n",
			"<leader>ef",
			"<cmd>NvimTreeFindFileToggle<CR>",
			{ desc = "Toggle file explorer on current file" }
		) -- toggle file explorer on current file
		keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
	end,
}
