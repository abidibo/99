local M = {}
--- TODO: some people change their current working directory as they open new
--- directories.  if this is still the case in neovim land, then we will need
--- to make the _99_state have the project directory.
--- @return string
function M.random_file()
  local cwd = vim.uv.cwd()
  local tmp_dir = string.format("%s/tmp", cwd)

  -- Ensure tmp directory exists
  vim.fn.mkdir(tmp_dir, "p")

  return string.format(
    "%s/99-%d",
    tmp_dir,
    math.floor(math.random() * 10000)
  )
end

return M
