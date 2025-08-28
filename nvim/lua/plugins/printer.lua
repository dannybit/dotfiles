return {
	"rareitems/printer.nvim",
	event = "VeryLazy",
	config = function()
		require("printer").setup({
			keymap = "gl", -- Plugin doesn't have any keymaps by default
			formatters = {
				typescriptreact = function(text_inside, text_var)
					return string.format('console.log("%s = ", %s)', text_inside, text_var)
				end,
				javascriptreact = function(text_inside, text_var)
					return string.format('console.log("%s = ", %s)', text_inside, text_var)
				end,
				vue = function(text_inside, text_var)
					return string.format('console.log("%s = ", %s)', text_inside, text_var)
				end,
			},
			add_to_inside = function(text)
				return string.format("%s", text) -- Your custom logic here
			end,
			vim.keymap.set({ "n", "v" }, "gp", "<Plug>(printer_below)", { desc = "Print Below" }),
			vim.keymap.set("n", "<leader>pw", "<Plug>(printer_print)iw", { desc = "Print current word" }),
			vim.keymap.set("n", "<leader>pW", "<Plug>(printer_print)iW", { desc = "Print current WORD" })
		})
	end,
}
