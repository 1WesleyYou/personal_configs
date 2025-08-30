return {
  "goolord/alpha-nvim",
  enabled = false,
  opts = function(_, opts) -- override the options using lazy.nvim
    opts.section.header.val = { -- change the header section value
      "man ",
    }
  end,
}
