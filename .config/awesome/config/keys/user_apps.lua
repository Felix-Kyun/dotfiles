-- for defining key binds for user apps 

local awful = require("awful")
local gears = require("gears")

local modkey = require("config.vars").modkey

--[[ 

Template For Defining Key Binding 
  `awful.key() <- $modkey, "key", function(), {about}`

  Example: 
  awful.key(
  {modkey}, "b",
  function() awful.util.spawn("brave") end,
  {description = "brave", group = "applications"}
  )

--]]

local _M = gears.table.join(
  -- brave
  awful.key(
  {modkey}, "b",
  function() awful.util.spawn("brave") end,
  {description = "brave", group = "applications"}
  )
)

return _M
