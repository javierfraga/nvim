-- 📋 Simple test for inside_docker()

local function inside_docker()
  return vim.fn.filereadable("/.dockerenv") == 1
end

-- 🔥 Test output
if inside_docker() then
  vim.api.nvim_echo({ { "🛢 Inside Docker container!", "WarningMsg" } }, false, {})
else
  vim.api.nvim_echo({ { "💻 Running on Host (not Docker)", "WarningMsg" } }, false, {})
end
