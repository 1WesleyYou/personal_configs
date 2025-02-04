-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "python",
      "c",
      "cpp",
      "javascript",
      "json",
      "html",
      -- add more arguments for adding more treesitter parsers
    },
    highlight = {
      enable = true,
    },
    textobjects = {
      highlight_definitions = { enable = true },
    },
  },
}
