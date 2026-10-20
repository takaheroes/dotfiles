return {
  {
    "yuki-yano/fuzzy-motion.vim",
    dependencies = { "lambdalisue/vim-kensaku" },
    lazy = false,
    init = function()
      vim.g.fuzzy_motion_matchers = { "kensaku", "fzf" }
    end,
    keys = {
      { "M", "<cmd>FuzzyMotion<CR>", mode = "n", desc = "FuzzyMotion" },
    },
  },
}
