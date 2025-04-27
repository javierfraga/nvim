-- 📋 inside_docker.lua: Detect if running inside a container and optionally setup OSC52 clipboard bridge

-- 🔍 Function: Detect if running inside Docker
local function inside_docker()
  return vim.fn.filereadable("/.dockerenv") == 1
end

-- 🔥 Visual message: Are we inside Docker?
if inside_docker() then
  vim.api.nvim_echo({ { "🛢 Inside Docker container!", "WarningMsg" } }, false, {})
else
  vim.api.nvim_echo({ { "💻 Running on Host (not Docker)", "WarningMsg" } }, false, {})
end

-- 🖇 If inside Docker, setup OSC52 clipboard syncing
if inside_docker() then
  local ok, osc52 = pcall(require, "osc52")

  if ok then
    -- 🌟 Configure OSC52 (you can add options here if needed)
    osc52.setup {
      max_length = 0, -- No limit
      silent = false, -- Show messages if you want
      trim = false,   -- Don't trim yank text
    }

    -- 🔗 After every yank, automatically copy to system clipboard using OSC52
    vim.api.nvim_create_autocmd("TextYankPost", {
      callback = function()
        if vim.v.event.operator == "y" then
          osc52.copy_register("+") -- You could use "*" for primary clipboard
        end
      end,
    })

    vim.api.nvim_echo({ { "🔗 OSC52 clipboard bridge loaded successfully (auto-sync yanks!)", "InfoMsg" } }, false, {})
  else
    vim.api.nvim_echo({ { "⚠️ Failed to load OSC52 clipboard bridge", "ErrorMsg" } }, false, {})
  end
end
