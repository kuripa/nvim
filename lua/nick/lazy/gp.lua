-- lazy.nvim
return {
    {
        "robitx/gp.nvim",
        config = function()
            local conf = {
                providers = {
                    openai = {
                        endpoint = "https://api.openai.com/v1/chat/completions",
                        secret = os.getenv("OPENAI_API_KEY"),
                    },

                    anthropic = {
                        endpoint = "https://api.anthropic.com/v1/messages",
                        secret = os.getenv("ANTHROPIC_API_KEY"),
                    },
                },
            }
            require("gp").setup(conf)
        end,
    }
}
