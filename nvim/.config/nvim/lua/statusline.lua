-- Init modeVar global variable to avoid "modeVar not found" error
vim.g.modeVar = ""

vim.api.nvim_create_autocmd("ModeChanged", {
  callback = function()
    -- Set modeVar to the correct value depending on the current mode
    -- This does not cover all modes
    if vim.api.nvim_get_mode().mode == "n" then
      vim.g.modeVar = "NORMAL"
    elseif vim.api.nvim_get_mode().mode == "i" then
      vim.g.modeVar = "INSERT"
    elseif vim.api.nvim_get_mode().mode == "v" then
      vim.g.modeVar = "VISUAL"
    elseif vim.api.nvim_get_mode().mode == "V" then
      vim.g.modeVar = "VISUAL-LINE"
    else
      vim.g.modeVar = "NOT FOUND"
    end
  end
})

local function statusLine()
  -- Return the statusline content
  return ("%f%y%m%r%=%{modeVar}%=%l:%c")
end

-- Set the statusbar to the return value of the statusLine function
vim.opt.statusline = statusLine()
