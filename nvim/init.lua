-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- wsl環境でクリップボードにコピーするための設定
if vim.fn.has("wsl") == 1 then
  if vim.fn.executable("wl-copy") == 0 then
    print("wl-clipboard not found, clipboard integration won't work")
  else
    vim.g.clipboard = {
      name = "wl-clipboard (wsl)",
      copy = {
        ["+"] = "wl-copy --foreground --type text/plain",
        ["*"] = "wl-copy --foreground --primary --type text/plain",
      },
      paste = {
        ["+"] = function()
          return vim.fn.systemlist('wl-paste --no-newline|sed -e "s/\r$//"', { "" }, 1) -- '1' keeps empty lines
        end,
        ["*"] = function()
          return vim.fn.systemlist('wl-paste --primary --no-newline|sed -e "s/\r$//"', { "" }, 1)
        end,
      },
      cache_enabled = true,
    }
  end
end

-- 実行環境を判定する関数
local function detect_environment()
  local env = {}
  -- Linux
  env.is_linux = vim.fn.has("unix") == 1 and not vim.fn.has("wsl") == 1
  -- Windows
  env.is_windows = vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1
  -- WSL
  env.is_wsl = vim.fn.has("wsl") == 1
  -- VSCode Neovim
  env.is_vscode = vim.g.vscode ~= nil
  return env
end
-- 実行環境を取得
local env = detect_environment()
-- モード変更時IME自動オフ
if env.is_linux then
  vim.api.nvim_set_keymap("i", "<silent> <Esc>", "<Esc>:call system('fcitx5-remote -c')<CR>", { noremap = true })
elseif env.is_vscode or env.is_wsl then
  vim.o.shell = "/usr/bin/bash --login"
  vim.cmd('autocmd InsertLeave * :call system("zenhan.exe 0")')
  vim.cmd('autocmd CmdlineLeave * :call system("zenhan.exe 0")')
elseif env.is_windows then
  vim.o.shell = "cmd.exe"
  vim.cmd("autocmd InsertLeave * :call system('zenhan 0')")
  vim.cmd("autocmd CmdlineLeave * :call system('zenhan 0')")
end
