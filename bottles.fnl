;; Get the translator
(local S energy_drinks.S)

;; Register the bottle
(core.register_craftitem "energy_drinks:bottle" {
  :description (S "Plastic Bottle")
	:groups {:bottle 1 :empty 1}
  :inventory_image :plastic_bottle.png})
(core.register_alias :plastic_bottle "energy_drinks:bottle")

;; Register each drink
(each [color des (pairs energy_drinks.drinks)]
	(core.register_craftitem (.. "energy_drinks:" color :_energy_drink) {
			:description (S "@1 Energy Drink" des)
			:groups {:energy_drink 1}
			:inventory_image (.. color :_energy_drink.png)
			:on_use (core.item_eat 1)})
	(core.register_alias
		(.. color :_energy_drink)
		(.. "energy_drinks:" color :_energy_drink)))