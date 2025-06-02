return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2", -- use the latest Harpoon version
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		-- Key mappings
		vim.keymap.set("n", "<leader>ha", function()
			harpoon:list():add()
		end, { desc = "Harpoon Add File" })
		vim.keymap.set("n", "<leader>hh", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Harpoon Menu" })
		vim.keymap.set("n", "<leader>h1", function()
			harpoon:list():select(1)
		end, { desc = "Harpoon to File 1" })
		vim.keymap.set("n", "<leader>h2", function()
			harpoon:list():select(2)
		end, { desc = "Harpoon to File 2" })
		vim.keymap.set("n", "<leader>h3", function()
			harpoon:list():select(3)
		end, { desc = "Harpoon to File 3" })
		vim.keymap.set("n", "<leader>h4", function()
			harpoon:list():select(4)
		end, { desc = "Harpoon to File 4" })
	end,
}
