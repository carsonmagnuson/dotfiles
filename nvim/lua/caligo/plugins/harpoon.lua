return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		-- set keymaps
		local keymap = vim.keymap -- for conciseness
		local ui = require("harpoon.ui")

		-- stole these from josean, could modify them to match what I have from primeagen but I like the example of the different way to do things.
		keymap.set(
			"n",
			"<leader>hh",
			"<cmd>lua require('harpoon.mark').add_file()<cr>",
			{ desc = "Mark file with harpoon" }
		)
		keymap.set(
			"n",
			"<leader>hn",
			"<cmd>lua require('harpoon.ui').nav_next()<cr>",
			{ desc = "Go to next harpoon mark" }
		)
		keymap.set(
			"n",
			"<leader>hp",
			"<cmd>lua require('harpoon.ui').nav_prev()<cr>",
			{ desc = "Go to previous harpoon mark" }
		)

		-- ThePrimeagen style mapping
		keymap.set("n", "<leader>hm", ui.toggle_quick_menu)
		keymap.set("n", "<leader>ha", function()
			ui.nav_file(1)
		end)
		vim.keymap.set("n", "<leader>hs", function()
			ui.nav_file(2)
		end)
		vim.keymap.set("n", "<leader>hd", function()
			ui.nav_file(3)
		end)
	end,
}
