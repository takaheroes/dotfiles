return {
  {
    "yuki-yano/fuzzy-motion.vim",
    dependencies = { "ambdalisue/vim-kensaku" },
    lazy = false,
    vim.keymap.set('n', 'M', '<cmd>FuzzyMotion<CR>'),
    vim.cmd([[
      let g:fuzzy_motion_matchers = ['kensaku', 'fzf']
    ]]),
  },
}
