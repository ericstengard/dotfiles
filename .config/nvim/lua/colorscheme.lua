local colorscheme = "gruvbox"

vim.o.background = "light" -- or "light" for light mode

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
