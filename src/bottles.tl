local S = energy_drinks.S

-- Empty Bottle
core.register_craftitem("energy_drinks:bottle", {
  description = S("Plastic Bottle"),
  groups = {bottle = 1, empty = 1},
  inventory_image = "plastic_bottle.png"
})
core.register_alias("plastic_bottle", "energy_drinks:bottle")

-- Register them!
for color, des in pairs(energy_drinks.drinks) do
  core.register_craftitem("energy_drinks:"..color.."_energy_drink", {
    description = S("@1 Energy Drink", des),
    groups = {energy_drink = 1},
    inventory_image = color.."_energy_drink.png",
    on_use = core.item_eat(1)
  })
  core.register_alias(color.."_energy_drink", "energy_drinks:"..color.."_energy_drink")
end