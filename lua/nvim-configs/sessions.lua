local session_path = vim.fn.stdpath("data") .. "/sessions/"
local session_file = session_path .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t") .. ".vim"

-- Create folder if it doesn't exist
vim.fn.mkdir(session_path, "p")

-- Save Session Command
vim.api.nvim_create_user_command("Sessionsave", function()
  vim.cmd("mksession! " .. session_file)
end, { desc = "Save session" })

-- Load Session Command
vim.api.nvim_create_user_command("Sessionload", function()
  vim.cmd("source " .. session_file)
end, { desc = "Load session" })

-- Auto-save session on exit
vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    vim.cmd("mksession! " .. session_file)
  end,
})
