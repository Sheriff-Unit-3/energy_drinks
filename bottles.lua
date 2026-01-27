local S, PS = core.get_translator("energy_drinks")

-- Empty Bottle
core.register_craftitem("energy_drinks:bottle", {
  description = S("Plastic Bottle"),
  groups = {bottle = 1, empty = 1},
  inventory_image = "plastic_bottle.png"
})
core.register_alias("plastic_bottle", "energy_drinks:bottle")
-- colors of drinks to register
local drinks = {"red", "blue", "yellow", "orange", "green", "white"}
-- for loop to register them
for k, drink in ipairs(drinks) do
  local des = string.gsub(drink, "^%a", string.upper)
  core.register_craftitem("energy_drinks:"..drink.."_energy_drink", {
    description = S("@1 Energy Drink", des),
    groups = {energy_drink = 1},
    inventory_image = drink.."_energy_drink.png",
    on_use = core.item_eat(1)
  })
  core.register_alias(drink.."_energy_drink", "energy_drinks:"..drink.."_energy_drink")
end