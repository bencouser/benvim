-- harpoon
return {
	"ThePrimeagen/harpoon",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("harpoon").setup()
	end,
	keys = {
		{
			"<leader>a",
			function()
				require("harpoon.mark").add_file()
			end,
			desc = "Harpoon: Mark file with harpoon",
		},
		{
			"<leader>hn",
			"<cmd> lua require('harpoon.ui').nav_next()<cr>",
			desc = "Harpoon: Go to next harpoon mark",
		},
		{
			"<leader>hp",
			"<cmd> lua require('harpoon.ui').nav_prev()<cr>",
			desc = "Harpoon: Go to previous harpoon mark",
		},
		{
			"<leader>ha",
			"<cmd> lua require('harpoon.ui').toggle_quick_menu()<cr>",
			desc = "Harpoon: Show harpoon marks",
		},
		{ "<C-h>", "<cmd> lua require('harpoon.ui').nav_file(1)<cr>", desc = "Harpoon: Go to first file" },
		{
			"<C-j>",
			"<cmd> lua require('harpoon.ui').nav_file(2)<cr>",
			desc = "Harpoon: Go to second file",
		},
		{ "<C-k>", "<cmd> lua require('harpoon.ui').nav_file(3)<cr>", desc = "Harpoon: Go to third file" },
		{
			"<C-l>",
			"<cmd> lua require('harpoon.ui').nav_file(4)<cr>",
			desc = "Harpoon: Go to fourth file",
		},
	},
}
