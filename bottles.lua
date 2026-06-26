local S = __fnl_global__energy_2ddrinks.S
core.register_craftitem("energy_drinks:bottle", {description = S("Plastic Bottle"), groups = {bottle = 1, empty = 1}, inventory_image = "plastic_bottle.png"})
core.register_alias("plastic_bottle", "energy_drinks:bottle")
for color, des in pairs(__fnl_global__energy_2ddrinks.drinks) do
  core.register_craftitem(("energy_drinks:" .. color .. "_energy_drink"), {description = S("@1 Energy Drink", des), groups = {energy_drink = 1}, inventory_image = (color .. "_energy_drink.png"), on_use = core.item_eat(1)})
  core.register_alias((color .. "_energy_drink"), ("energy_drinks:" .. color .. "_energy_drink"))
end
return nil
