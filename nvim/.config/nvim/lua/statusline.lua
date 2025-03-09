-- Init modeVar global variable to avoid "modeVar not found" error
vim.g.modeVar = ""
vim.g.fileSizeVar = ""

function getMode()
  -- Set modeVar to the correct value depending on the current mode
  -- This does not cover all modes
  local mode = vim.api.nvim_get_mode().mode
  if mode == "n" then
    vim.g.modeVar = "NORMAL"
  elseif mode == "i" then
   vim.g.modeVar = "INSERT"
  elseif mode == "v" then
    vim.g.modeVar = "VISUAL-CHAR"
  elseif mode == "V" then
    vim.g.modeVar = "VISUAL-LINE"
  elseif mode == "CTRL-V" then
    vim.g.modeVar = "VISUAL-BLOCK"
  elseif mode == "s" then
    vim.g.modeVar = "SELECT-CHAR"
  elseif mode == "s" then
    vim.g.modeVar = "SELECT-LINE"
  elseif mode == "R" then
    vim.g.modeVar = "REPLACE"
  elseif mode == "c" then
    vim.g.modeVar = "COMMAND"
  elseif mode == "cv" then
    vim.g.modeVar = "EX"
  else
    vim.g.modeVar = "NOT FOUND"
  end
end

function getFileSize()
  -- Get the file size from the current buffer
  vim.g.fileSizeVar = vim.fn.getfsize(vim.api.nvim_buf_get_name(0))
end

-- Call getMode() and getFileSize() after entering a buffer
-- Call getFileSize() after setting the modified var for a buffer
-- Call getMode() when the mode changes
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    getMode()
    getFileSize()
  end
})
vim.api.nvim_create_autocmd("BufModifiedSet", {
  callback = function()
    getFileSize()
  end
})
vim.api.nvim_create_autocmd("ModeChanged", {
  callback = function()
    getMode()
    getFileSize()
  end
})

-- Set up the statusbar
vim.opt.statusline = ("%f %y%m%r %Ll:%{fileSizeVar}b%=%{modeVar}:Buf-%n | %l:%c %p%% ")
