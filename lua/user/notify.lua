local status_ok, notify = pcall(require, "notify")
if not status_ok then
  return
end

local plugin = "Welcome:"

notify.notify("Be creative!", "info", {
  title = plugin,
  stages = "slide",
})
