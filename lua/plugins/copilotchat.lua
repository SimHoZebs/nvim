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
          insert = "<C-k>",
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
        desc = "Open CopilotChat",
      },
      -- Reset CopilotChat window
      {
        "<leader>cr",
        function()
          require("CopilotChat").reset()
        end,
        desc = "Reset CopilotChat",
      },
    },
  }
}
