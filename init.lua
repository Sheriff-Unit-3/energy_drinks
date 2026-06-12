energy_drinks = {}
energy_drinks.S, energy_drinks.PS = core.get_translator("energy_drinks")

local S = energy_drinks.S

energy_drinks.drinks = {
  red = S("Red"),
  blue = S("Blue"),
  yellow = S("Yellow"),
  orange = S("Orange"),
  green = S("Green"),
  white = S("White")
}

local modpath = core.get_modpath(core.get_current_modname())
dofile(modpath.."/bottles.lua")
dofile(modpath.."/crafts.lua")