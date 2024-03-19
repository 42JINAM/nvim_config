-- return {
--   n = {
--     ["<leader>ro"]  = { "<Plug>RestNvim<CR>", desc = "Open This file in chrome" },
--     ["<leader>rp"] = { "<Plug>RestNvimPreview", desc = "Preview request under the cursor" },
--     ["<leader>rl"] = { "<Plug>RestNvimLast<CR>", desc = "Re-run the last request" }
--   }
-- }
--
return {
  n = {
    ["<leader>ro"] = {
      function()
        -- macOS에서 Chrome을 열기 위한 함수
        local function open_in_chrome(url)
          os.execute('open -a "Google Chrome" "' .. url .. '"')
        end

        -- 현재 파일을 Chrome에서 열기
        open_in_chrome(vim.fn.expand("%:p"))
      end,
      desc = "Open This file in chrome"
    },
    ["<leader>rp"] = { "<Plug>RestNvimPreview", desc = "Preview request under the cursor" },
    ["<leader>rl"] = { "<Plug>RestNvimLast<CR>", desc = "Re-run the last request" }
  }
}
