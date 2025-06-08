return {
	{
		"jkallio/quick-kanban.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("quick-kanban").setup()
		end,
		cmd = { "QuickKanban" }, -- optional: lazy load on command
		keys = {
			{ "<leader>k", "<cmd>QuickKanban<cr>", desc = "Toggle Kanban" },
		},
	},
}
