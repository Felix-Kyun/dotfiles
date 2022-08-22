-- for defining key binds for user apps 

local awful = require("awful")
local gears = require("gears")

local modkey = require("config.vars").modkey
local bin = require("config.vars").bin
--[[ 

Template For Defining Key Binding 
  `awful.key() <- $modkey, "key", function(), {about}`

  Example: 

  # style 1 
  awful.key(
  {modkey}, "b",
  function() awful.util.spawn("brave") end,
  {description = "brave", group = "applications"}
  )

  # style 2 
  awful.key{
    modifiers   = {mod.super},
    key         = 's',
    description = 'show help',
    group       = 'awesome',
    on_press    = hotkeys_popup.show_help,
  }

--]]

local _M = gears.table.join(
  -- browser {depends: brave}
  awful.key(
  {modkey}, "b",
  function() awful.util.spawn("brave") end,
  {description = "brave", group = "applications"}
  ),
  -- screenshot {depends: scrot}
  awful.key(
  {}, "Print",
  function () awful.spawn.with_shell("rofi-screenshot")  end,
  {description = "Take ScreenShot", group = "applications"}
  ),
  awful.key(
  {}, "XF86AudioPause",
  function() awful.spawn.with_shell('playerctl play-pause') end,
  {description = 'pause media', }
  ),
  awful.key(
  {}, "XF86AudioPlay",
  function() awful.spawn.with_shell('playerctl play-pause') end,
  {description = 'play media', }
  ),
  awful.key(
  {modkey}, "z",
  function() awful.spawn.with_shell('rofi-bluetooth') end,
  {description = 'rofi bluetooth menu', }
  ),
  awful.key(
  {modkey}, ";",
  function() awful.spawn.with_shell('todofi.sh') end,
  {description = 'rofi todo manager', }
  )
)

return _M
