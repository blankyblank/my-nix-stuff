{
  programs.nixvim.extraConfigLua = ''
  vim.o.statusline = '  %f %= %(%h%w%m%r%) %y  '
  vim.o.updatetime = 1000
  vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
    callback = function()
      vim.diagnostic.open_float(nil, { border = "rounded", focus = false })
    end
  })
'';
}
