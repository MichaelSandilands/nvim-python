return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		build = ":TSUpdate",
	},
	{
		"MeanderingProgrammer/treesitter-modules.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		opts = {
			ensure_installed = {
				"bash",
				"css",
				"csv",
				"diff",
				"dockerfile",
				"html",
				"javascript",
				"json",
				"latex",
				"lua",
				"luadoc",
				"markdown",
				"markdown_inline",
				"python",
				"query",
				"r",
				"scss",
				"sql",
				"toml",
				"typescript",
				"vim",
				"vimdoc",
				"yaml",
			},
			-- list of parser names, or 'all', to ignore installing
			ignore_install = {},
			-- install parsers in ensure_installed synchronously
			sync_install = false,
			-- automatically install missing parsers when entering buffer
			auto_install = false,
			fold = {
				enable = false,
				disable = false,
			},
			highlight = {
				enable = false,
				disable = false,
				-- setting this to true will run `:h syntax` and tree-sitter at
				-- the same time set this to `true` if you depend on 'syntax'
				-- being enabled using this option may slow down your editor,
				-- and duplicate highlights instead of `true` it can also be a
				-- list of languages
				additional_vim_regex_highlighting = false,
			},
			incremental_selection = {
				enable = true,
				disable = false,
			},
			indent = {
				enable = false,
				disable = false,
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		branch = "main",
		init = function()
			vim.g.no_plugin_maps = true
		end,
		config = function() end,
	},
}
