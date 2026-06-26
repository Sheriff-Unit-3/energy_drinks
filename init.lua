__fnl_global__energy_2ddrinks = {}
__fnl_global__energy_2ddrinks.S, __fnl_global__energy_2ddrinks.PS = core.get_translator("energy_drinks")
local S = __fnl_global__energy_2ddrinks.S
__fnl_global__energy_2ddrinks.drinks = {blue = S("Blueberry"), green = S("Green Apple"), orange = S("Orange"), purple = S("Grape"), red = S("Strawberry"), white = S("Icy Snow"), yellow = S("Lemon")}
local modpath = core.get_modpath(core.get_current_modname())
dofile((modpath .. "/bottles.lua"))
return dofile((modpath .. "/crafts.lua"))
