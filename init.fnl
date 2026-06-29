;; Define the global table
(global energy_drinks {})
(set (energy_drinks.S energy_drinks.PS) (core.get_translator :energy_drinks))

;; List of drinks
(local S energy_drinks.S)
(set energy_drinks.drinks {
	:blue (S :Blueberry)
	:green (S "Green Apple")
	:orange (S :Orange)
	:purple (S :Grape)
	:red (S :Strawberry)
	:white (S "Icy Snow")
	:yellow (S :Lemon)})

;; Load mod files
(local modpath (core.get_modpath (core.get_current_modname)))
(dofile (.. modpath :/bottles.lua))
(dofile (.. modpath :/crafts.lua))