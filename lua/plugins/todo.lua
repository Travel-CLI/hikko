require('todo-comments').setup {
  signs = true,
  sign_priority = 8,
  keywords = {
    FIX = {
      icon = " ",
      color = "fix",
    },
    TODO = { icon = " ", color = "todo" },
    NOTE = { icon = " ", color = "info" },
    LINK = { icon = " ", color = "link" },
    TEST = { icon = " ", color = "test" },
  },
  gui_style = {
    fg = "NONE",
    bg = "BOLD",
  },
  merge_keywords = true,
  colors = {
    fix  = {"#AFBFC0"},
    todo = {"#C5D86D"},
    test = {"#9C89B8"},
    link = {"#2364AA"},
    info = {"#7C90A0"},
  },
}
