local colorscheme = "ayu"
vim.cmd[[let ayucolor="mirage"]] -- SET FOR AYU only

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("🤬 colorscheme " .. colorscheme .. " not found!💀")
  return
end
