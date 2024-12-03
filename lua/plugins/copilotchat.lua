return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    event = "VeryLazy",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim" },  -- for curl, log wrapper
    },
    build = "make tiktoken",
    opts = {
      debug = true, -- Enable debugging
      mappings = {
        submit_prompt = {
          normal = "<Enter>",
          insert = "<Enter>",
        },
        close = {
          normal = "q",
          insert = "<C-q>"
        }
      }
    },
    keys = {
      -- Show help actions with telescope
      {
        "<leader>ch",
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.telescope").pick(actions.help_actions())
        end,
        desc = "CopilotChat - Help actions",
      },
      -- Show prompts actions with telescope
      {
        "<leader>cp",
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
        end,
        desc = "CopilotChat - Prompt actions",
      },
      -- Open CopilotChat window
      {
        "<leader>cl",
        function()
          require("CopilotChat").open()
        end,
        desc = "CopilotChat - Open Vertical",
      },
      -- Reset CopilotChat window
      {
        "<leader>cr",
        function()
          require("CopilotChat").reset()
        end,
        desc = "CopilotChat - Reset",
      },
      {
        "<leader>cn",
        function()
          require("CopilotChat").open({
            window = {
              layout = 'replace',
            }
          })
        end,
        desc = "CopilotChat - Open Replace",
     },
     {
        "<leader>cf",
        function ()
          require("CopilotChat").open({
            window = {
              layout = 'float',
              width = 0.8,
              height = 0.8
            }
          })
        end,
        desc = "CopilotChat - Open Float"
     }
    },
  }
}
