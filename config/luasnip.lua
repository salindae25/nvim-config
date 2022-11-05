local ls = require 'luasnip'
local types =require 'luasnip.util.types'
require("luasnip.loaders.from_lua").load({ paths = "~/AppData/Local/nvim/lua/snip/" })
require("luasnip.loaders.from_vscode").lazy_load()
vim.cmd([[command! LuaSnipEdit :lua require("luasnip.loaders.from_lua").edit_snippet_files()]]) --}}}
ls.config.set_config {
  -- This tells LuaSnip to remember to keep around the last snippet.
  -- You can jump back into it even if you move outside of the selection
  history = true,

  -- This one is cool cause if you have dynamic snippets, it updates as you type!
  updateevents = "TextChanged,TextChangedI",

  -- Autosnippets:
  enable_autosnippets = true,

  -- Crazy highlights!!
  -- #vid3
  -- ext_opts = nil,
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { " « ", "NonTest" } },
      },
    },
  },
}
ls.snippets= {
  all={
  ls.parser.parse_snippet('expand','expand to this')
  },
  javascriptreact= {
  ls.parser.parse_snippet('expand','expand to this'),
    ls.parser.parse_snippet('ffc','\nconst $1 =({$2})=>{\nreturn <>$3</>}\nexport default $0')
  }
}



vim.keymap.set({ "i", "s" }, "<a-k>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

-- <c-j> is my jump backwards key.
-- this always moves to the previous item within the snippet
vim.keymap.set({ "i", "s" }, "<a-j>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })

-- <c-l> is selecting within a list of options.
-- This is useful for choice nodes (introduced in the forthcoming episode 2)
vim.keymap.set("i", "<c-l>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end)

vim.keymap.set("i", "<c-u>", require "luasnip.extras.select_choice")

vim.keymap.set("n", "<Space><Space>s", "<cmd>source ~/AppData/Local/nvim/after/plugin/luasnip.lua<CR>")


