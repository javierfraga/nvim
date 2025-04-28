--[[
📋 ContainerPasteCleanup Command

🧠 Purpose:
- Provides a way to clean up unwanted ANSI escape sequences (e.g., ^[[27;5~ junk)
  typically left behind when copying from terminal buffers like containers, tmux,
  or remote servers into Neovim.

🔎 How It Works:
- If you visually select some text (using `v` or `V`) before running `:CleanEscapeSequences`,
  it will only clean the selected lines.
- If you run it without a visual selection, it will clean the **entire buffer**.
- It looks for terminal escape sequences matching the pattern `\x1b\[[0-9;]*[~A-Za-z]`
  and replaces them with a newline (`\r`) or effectively removes them.

🚀 Usage:
- **Visual selection**:
  1. Highlight the corrupted text in visual mode (`v` or `V`).
  2. Run `:CleanEscapeSequences`.
- **Whole file**:
  1. Simply run `:CleanEscapeSequences` without selecting anything.

✅ Expected Result:
- The unwanted terminal control characters will be stripped out, leaving clean, readable text.

🎯 Why Use This:
- Essential when copying from tmux sessions, Docker containers, remote SSH sessions, or
  Alacritty terminals where OSC52 or other mechanisms might copy hidden control sequences.
- Makes copied logs, scripts, configs, and command outputs clean and usable again inside Neovim.

]]

vim.api.nvim_create_user_command("ContainerPasteCleanup", function()
  -- Only run on visually selected text
  if vim.fn.mode() == "v" or vim.fn.mode() == "V" then
    -- Get selected range
    local start_pos = vim.fn.getpos("'<")
    local end_pos = vim.fn.getpos("'>")
    -- Build the range substitution
    local cmd = string.format("%s,%ss/\\%%x1b\\[[0-9;]*[~A-Za-z]/\\r/g", start_pos[2], end_pos[2])
    vim.cmd(cmd)
  else
    -- If not visually selected, fallback to entire file
    vim.cmd([[%s/\%x1b\[[0-9;]*[~A-Za-z]/\r/g]])
  end
end, { desc = "Remove unwanted escape sequences from selection or buffer" })
