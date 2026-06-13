energy_drinks = {}
energy_drinks.S, energy_drinks.PS = core.get_translator("energy_drinks")

local S = energy_drinks.S

energy_drinks.drinks = {
  red = S("Strawberry"),
  blue = S("Blueberry"),
  yellow = S("Lemon"),
  orange = S("Orange"),
  green = S("Green Apple"),
  white = S("Icy Snow"),
  purple = S("Grape")
}

local modpath = core.get_modpath(core.get_current_modname())
dofile(modpath.."/bottles.lua")
dofile(modpath.."/crafts.lua")