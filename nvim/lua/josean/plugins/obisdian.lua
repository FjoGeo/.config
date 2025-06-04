return {
	"epwalsh/obsidian.nvim",
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "personal",
				path = "~/Obsidian Vault/personal",
			},
			{
				name = "work",
				path = "~/Obsidian Vault/work",
			},
		},
	},
	config = function(_, opts)
		require("obsidian").setup(opts)

		-- Set conceallevel=2 for markdown files
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "markdown",
			callback = function()
				vim.wo.conceallevel = 2
			end,
		})
	end,
}
