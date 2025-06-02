return {
  -- Other plugins you have here
  {
    "airblade/vim-rooter",
    config = function()
      -- Optional: Customize the rooter patterns
      vim.g.rooter_patterns = { ".git", ".venv", "pyproject.toml" }
    end,
  },
}
