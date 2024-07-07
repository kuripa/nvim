return {

{
  "Diogo-ss/42-header.nvim",
  cmd = { "Stdheader" },
  keys = { "<F1>" },
  config = function()
require("42header").setup({

  ---Max header size (not recommended change).
  --length = 80,
  ---Header margin (not recommended change).
  --margin = 5,
  ---Activate default mapping (e.g. F1).
  default_map = true,
  ---Enable auto-update of headers.
  auto_update = true,
  ---Default user.name.
  user = "nfuhrman",
  ---Default user.email.
  mail = "nfuhrman@student.42wolfsburg.de",
  ---ASCII art.
  --asciiart = { "---", "---", ... },
  ---Git config.
  git = {
    ---Enable Git support.
    enabled = false,
    ---PATH to the Git binary.
    bin = "git",
    ---Use global user.name, otherwise use local user.name.
    user_global = true,
    ---Use global user.email, otherwise use local user.email.
    email_global = true,
  },
}
)
  end,
},

	{
		"hardyrafael17/norminette42.nvim",
		config = function()
		local norminette = require("norminette")
		norminette.setup({
				runOnSave = true,
				maxErrorsToShow = 5,
				active = true,
		})
	end,
	}

}
