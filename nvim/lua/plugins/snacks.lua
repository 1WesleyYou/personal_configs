math.randomseed(os.time())

local n = math.random(1, 5)
local name = string.format("~/.config/nvim/lua/plugins/ascii/img%d.txt", n)
return {
  "folke/snacks.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    gitbrowse = {
      default = "github",
      remotes = { "origin", "upstream" },
    },
    image = { enabled = true },
    dashboard = {
      formats = {
        key = function(item) return { { "[", hl = "special" }, { item.key, hl = "key" }, { "]", hl = "special" } } end,
      },
      -- preset = {
      --   header = vim.tbl_map(function(s) return s end, vim.split(header1, "\n", { plain = true })),
      -- },
      sections = {
        {
          section = "terminal",
          cmd = "cat " .. name,
          pane = 1,
          height = 25,
          indent = 2,
        },
        -- { section = "header", pane = 1, padding = 1 },
        { title = "Yuchen You", pane = 1 },
        { title = "Shanghai Jiao Tong University", pane = 1 },
        { title = "Recent Files", padding = 1, pane = 2 },
        { section = "recent_files", pane = 2, limit = 8, padding = 1 },
        { title = "Sessions", padding = 1, pane = 2 },
        { section = "projects", padding = 1, pane = 2 },
        {
          pane = 1,
          icon = " ",
          desc = "Browse Repo",
          padding = 1,
          key = "b",
          action = function() Snacks.gitbrowse() end,
        },
        { section = "keys", gap = 1, padding = 1, pane = 2 },
      },
    },
  },
}
