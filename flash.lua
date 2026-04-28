return {
  "folke/flash.nvim",
  event = "VeryLazy",
  config = function()
    require("flash").setup({
      search = {
        mode = function(str)
          local has_kensaku = vim.fn.exists('*kensaku#query') == 1
          print("=== Flash Search Debug ===")
          print("Input:", str)
          print("Kensaku available:", has_kensaku)
          
          if has_kensaku then
            local pattern = vim.fn['kensaku#query'](str)
            print("Pattern:", pattern:sub(1, 100))
            return pattern
          end
          
          print("Using plain search")
          return str
        end,
      },
    })
  end,
  keys = {
    {
      "s",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash Jump with Kensaku",
    },
  },


}


--return {
--  "folke/flash.nvim",
--  event = "VeryLazy",
--  opts = {
--    search = {
--      mode = function(str)
--        if vim.fn.exists("*kensaku#query") == 1 then
--          return vim.fn["kensaku#query"](str)
--        end
--        return str
--      end,
--    },
--  },
--  keys = {
--    {
--      "s",
--      mode = { "n", "x", "o" },
--      function()
--        require("flash").jump()
--      end,
--      desc = "Flash Jump with Kensaku",
--    },
--    {
--      "S",
--      mode = { "n", "x", "o" },
--      function()
--        require("flash").treesitter()
--      end,
--      desc = "Flash Treesitter",
--    },
--    {
--      "r",
--      mode = "o",
--      function()
--        require("flash").remote()
--      end,
--      desc = "Remote Flash",
--    },
--  },
--}
-- return {
--   "folke/flash.nvim",
--   lazy = false, -- すぐに読み込む
--   config = function()
--     vim.notify("Setting up flash.nvim...", vim.log.levels.INFO)
--
--     require("flash").setup({
--       search = {
--         mode = function(str)
--           local has_kensaku = vim.fn.exists("*kensaku#query") == 1
--           vim.notify(
--             string.format("Kensaku available: %s, searching for: %s", tostring(has_kensaku), str),
--             vim.log.levels.DEBUG
--           )
--
--           if has_kensaku then
--             local pattern = vim.fn["kensaku#query"](str)
--             vim.notify(string.format("Pattern: %s", pattern:sub(1, 100)), vim.log.levels.DEBUG)
--             return pattern
--           end
--           return str
--         end,
--       },
--     })
--
--     -- 初期化確認
--     if require("flash").config then
--       vim.notify("✓ Flash.nvim initialized successfully", vim.log.levels.INFO)
--     else
--       vim.notify("✗ Flash.nvim initialization failed", vim.log.levels.ERROR)
--     end
--   end,
--   keys = {
--     {
--       "s",
--       mode = { "n", "x", "o" },
--       function()
--         require("flash").jump()
--       end,
--       desc = "Flash Jump with Kensaku",
--     },
--   },
-- }
-- return {
--   "folke/flash.nvim",
--   keys = {
--     {
--       "s",
--       mode = { "n", "x", "o" },
--       function()
--         require("flash").jump()
--       end,
--       desc = "Flash Jump with Kensaku",
--     },
--     {
--       "S",
--       mode = { "n", "x", "o" },
--       function()
--         require("flash").treesitter()
--       end,
--       desc = "Flash Treesitter",
--     },
--   },
--   opts = function()
--     return {
--       search = {
--         mode = function(str)
--           if vim.fn.exists("*kensaku#query") == 1 then
--             local pattern = vim.fn["kensaku#query"](str)
--             return pattern
--           end
--           return str
--         end,
--       },
--     }
--   end,
-- }
-- return {
--   "folke/flash.nvim",
--   event = "VeryLazy",
--   config = function()
--     -- シンプルに、kensakuが利用可能になるまで待つ
--     vim.defer_fn(function()
--       if vim.fn.exists("*kensaku#query") == 1 then
--         require("flash").setup({
--           search = {
--             mode = function(str)
--               return vim.fn["kensaku#query"](str)
--             end,
--           },
--         })
--       end
--     end, 2000) -- 2秒待つ
--   end,
--   keys = {
--     {
--       "s",
--       mode = { "n", "x", "o" },
--       function()
--         require("flash").jump()
--       end,
--       desc = "Flash Jump with Kensaku",
--     },
--   },
-- }
-- return {
--   "folke/flash.nvim",
--   {
--     ";",
--     mode = { "n", "x", "o" },
--     function()
--       require("flash").jump({
--         search = {
--           mode = function(str)
--             return vim.fn["kensaku#query"](str)
--           end,
--         },
--       })
--     end,
--     desc = "Flash with Kensaku",
--   },
-- }
