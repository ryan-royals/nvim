return {
  "chrisgrieser/nvim-scissors",
  dependencies = "nvim-telescope/telescope.nvim", -- if using telescope
  opts = {
    snippetDir = vim.fn.stdpath("config") .. "/snippets",
  },
  keys = {
    {
      "<leader>cz",
      function()
        require("scissors").editSnippet()
      end,
      desc = "Znippet Edit",
    },
    {
      "<leader>cZ",
      function()
        require("scissors").addNewSnippet()
      end,
      desc = "Znippet Add",
    },
  },
}
