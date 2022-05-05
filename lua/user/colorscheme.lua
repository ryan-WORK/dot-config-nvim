local colorscheme = "ayu"

if colorscheme == "ayu" then
    vim.cmd[[let ayucolor="mirage"]] -- SET FOR AYU only
end
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("🤬 colorscheme " .. colorscheme .. " not found!💀")
  return
end
