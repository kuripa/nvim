local g = vim.g

g.dashboard_disable_statusline = 1
g.dashboard_default_executive = "telescope"


g.dashboard_custom_header = {

	"███████╗████████╗ █████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
	"██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██║   ██║██║████╗ ████║ ",
	"███████╗   ██║   ███████║██████╔╝██║   ██║██║██╔████╔██║ ",
	"╚════██║   ██║   ██╔══██║██╔══██╗╚██╗ ██╔╝██║██║╚██╔╝██║ ",
	"███████║   ██║   ██║  ██║██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
	"╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
}

g.dashboard_custom_section = {
	a = {
		description = { "  Find File                 SPC f f" },
		command = "Telescope find_files",
	},
	b = {
		description = { "  Recents                   SPC f o" },
		command = "Telescope oldfiles",
	},
	c = {
		description = { "  Find Word                 SPC f w" },
		command = "Telescope live_grep",
	},
	d = {
		description = { "洛 New File                  SPC f n" },
		command = "enew",
	},
	e = {
		description = { "  Bookmarks                 SPC b m" },
		command = "Telescope marks",
	},
	f = {
		description = { "  Load Last Session         SPC q l" },
		command = "SessionLoad",
	},
}

g.dashboard_custom_footer = {
	"NeoVim loaded in " .. vim.fn.printf("%.3f", vim.fn.reltimefloat(vim.fn.reltime(vim.g.start_time))) .. " seconds.",
}
