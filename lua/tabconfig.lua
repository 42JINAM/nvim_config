-- ~/.config/nvim/lua/user/tabconfig.lua
local cmp = require'cmp'
local luasnip = require'luasnip'

-- nvim-cmp 설정
cmp.setup({
  mapping = {
    -- Tab 키를 자동완성 선택에 사용하지 않고 실제 탭 입력만 하도록 설정
    ['<Tab>'] = function(fallback)
      -- 자동완성 팝업이 보이지 않으면 실제 탭을 입력
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Tab>', true, true, true), 'n', true)
    end,

    -- Shift+Tab도 실제 Shift+Tab 입력만 하도록 설정
    ['<S-Tab>'] = function(fallback)
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<S-Tab>', true, true, true), 'n', true)
    end,
  },

  -- 나머지 cmp 설정
})

-- Tab 키가 누를 때 자동완성 목록이나 스니펫 확장 없이 실제 탭을 입력
vim.keymap.set('i', '<Tab>', function()
  -- 실제 탭 입력
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Tab>', true, true, true), 'n', true)
end, {silent = true})

vim.keymap.set('s', '<Tab>', function()
  -- 실제 탭 입력
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Tab>', true, true, true), 'n', true)
end, {silent = true})
