return {
	"zbirenbaum/copilot.lua",
	event = "InsertEnter",
	cmd = "Copilot",
	config = function()
		-- import copilot plugin safely
		local copilot = require("copilot")

		-- enable copilot
		copilot.setup({
			suggestion = {
				enabled = true,
				auto_trigger = true,
				keymap = {
					accept = "<C-l>",
					next = "<M-]>",
					prev = "<M-[>",
					dismiss = "<C-]>",
				},
			},
			panel = { enabled = false },
		})

		-- Toggle Copilot with <leader>cp
		vim.api.nvim_set_keymap(
			"n",
			"<leader>cp",
			"<cmd>Copilot toggle<CR>",
			{ noremap = true, silent = true, desc = "Toggle Copilot" }
		)
	end,
}
