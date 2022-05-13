local colorscheme = "duskfox"

-- if colorscheme == "nightfox" then
--
-- end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("🤬 colorscheme " .. colorscheme .. " not found!💀")
  return
end
