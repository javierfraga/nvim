-- 📋 inside_docker.lua: Detect if running inside a container and optionally setup OSC52 clipboard

-- 🔍 Check if running inside Docker
local function inside_docker()
  return vim.fn.filereadable("/.dockerenv") == 1
end

-- 🔥 Test output
if inside_docker() then
  vim.api.nvim_echo({ { "🛢 Inside Docker container!", "WarningMsg" } }, false, {})
else
  vim.api.nvim_echo({ { "💻 Running on Host (not Docker)", "WarningMsg" } }, false, {})
end

-- 🖇 Set up clipboard sync using OSC52 *only if* inside Docker
if inside_docker() then
  local ok, osc52 = pcall(require, "vim.ui.clipboard.osc52")

  if ok then
    vim.g.clipboard = osc52
    vim.api.nvim_echo({ { "🔗 OSC52 clipboard bridge loaded successfully", "InfoMsg" } }, false, {})
  else
    vim.api.nvim_echo({ { "⚠️ Failed to load OSC52 clipboard bridge", "ErrorMsg" } }, false, {})
  end
end
