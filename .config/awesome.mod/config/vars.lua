-- Define Variables Here 

local _M = {
  terminal = "urxvt",
  editor = os.getenv("EDITOR") or "nvim",
  editor_cmd = "urxvt" .. " -e " .. "nvim",
  modkey = "Mod4"
}

return _M
