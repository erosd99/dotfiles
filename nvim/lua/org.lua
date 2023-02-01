require('neorg').setup {
    load = {
        ["core.defaults"] = {},
		["core.norg.completion"] = {
			config = {
				engine = "nvim-cmp"
			}
		},
		["core.integrations.nvim-cmp"] = { },
		["core.integrations.treesitter"] = { },
		["core.norg.concealer"] = { },
		["core.export"] = { },
    }
}
