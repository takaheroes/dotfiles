return {
  "lambdalisue/vim-kensaku-search",
  event = "VeryLazy",
  config = function()
    -- 検索コマンド（/と?）でkensakuを有効化
    vim.cmd([[
      cnoremap <CR> <Plug>(kensaku-search-replace)<CR>
    ]])
  end,
}
