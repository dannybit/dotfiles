return {
	{
	"nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "lua", "javascript", "markdown", "vimdoc", "python", "typescript", "tsx"},
			highlight = { enable = true },
			indent = { enable = false },
			incremental_selection = {
			  enable = true,
			  keymaps = {
				init_selection = "<Leader>ss",
				node_incremental = "<Leader>si",
				scope_incremental = "<Leader>sc",
				node_decremental = "<Leader>sd",
			  }
			}
		})
	end
	}
}
