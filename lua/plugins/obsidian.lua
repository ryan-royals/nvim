if true then
  return {}
end
return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/vault",
      },
    },

    -- see below for full list of options 👇
    notes_subdir = "30 Slipbox",
    daily_notes = {
      folder = "10 Daily Notes",
      template = "daily note template",
    },
    new_notes_location = "99 Inbox",
    templates = {
      folder = "00 Templates",
    },
    use_advanced_uri = true,
    open_app_foreground = true,
    picker = {
      name = "fzf-lua",
    },
  },
}
