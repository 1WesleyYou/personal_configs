local ls = require "luasnip"
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require "luasnip.util.events"
local ai = require "luasnip.nodes.absolute_indexer"
local extras = require "luasnip.extras"
local fmt = extras.fmt
local m = extras.m
local l = extras.l
local postfix = require("luasnip.extras.postfix").postfix

return {
  -- setup
  s("setup", {
    { t { "\\documentclass{article}\n" } },
    { t { "\\usepackage{graphicx}\n" } },
    { t { "\\usepackage{geometry}\n" } },
    { t { "\\usepackage{biblatex}\n" } },
    { t { "\\usepackage{amsmath,amssymb,amsfonts,mathtools}\n" } },
    { t { "\\title{test_template}\n" } },
    { t { "\\author{Yuchen You}\n" } },
    { t { "\\date{today}\n" } },
    { t { "\\begin{document}\n" } },
    { t { "\\maketitle\n" } },
    { t { "\\section{Introduction}\n" } },
    { t { "\\end{document}}\n" } },
  }),
}
