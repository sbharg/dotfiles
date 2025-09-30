return {
  {
    "saghen/blink.cmp",
    opts = {

      completion = {
        accept = {
          auto_brackets = {
            enabled = false,
          },
        },
      },

      keymap = {
        preset = "super-tab",
        ["<Tab>"] = {
          require("blink.cmp.keymap.presets").get("super-tab")["<Tab>"][1],
          require("lazyvim.util.cmp").map({ "snippet_forward", "ai_accept" }),
          "fallback",
        },
      },
    },
  },
}
