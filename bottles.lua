-- short hand
local eds = "energy_drinks:"
local pb = "plastic_bottle"
local ed = "_energy_drink"
local ged = {energy_drink = 1}
local cie = core.item_eat(1)

-- Empty Bottle
core.register_craftitem(eds.."bottle", {
    description = "Plastic Bottle",
    groups = {bottle = 1, empty = 1},
    inventory_image = pb..".png"
})
core.register_alias(pb, eds.."bottle")

-- Red Energy Drink
core.register_craftitem(eds.."red"..ed, {
    description = "Red Energy Drink",
    groups = ged,
    inventory_image = "red"..ed..".png",
    on_use = cie
})
core.register_alias("red"..ed, eds.."red"..ed)

-- Blue Energy Drink
core.register_craftitem(eds.."blue"..ed, {
    description = "Blue Energy Drink",
    groups = ged,
    inventory_image = "blue"..ed..".png",
    on_use = cie
})
core.register_alias("blue"..ed, eds.."blue"..ed)

-- Yellow Energy Drink
core.register_craftitem(eds.."yellow"..ed, {
    description = "Yellow Energy Drink",
    groups = ged,
    inventory_image = "yellow"..ed..".png",
    on_use = cie
})
core.register_alias("yellow"..ed, eds.."yellow"..ed)

-- Orange Energy Drink
core.register_craftitem(eds.."orange"..ed, {
    description = "Orange Energy Drink",
    groups = ged,
    inventory_image = "orange"..ed..".png",
    on_use = cie
})
core.register_alias("orange"..ed, eds.."orange"..ed)

-- Green Energy Drink
core.register_craftitem(eds.."green"..ed, {
    description = "Green Energy Drink",
    groups = ged,
    inventory_image = "green"..ed..".png",
    on_use = cie
})
core.register_alias("green"..ed, eds.."green"..ed)

-- White Energy Drink
core.register_craftitem(eds.."white"..ed, {
    description = "White Energy Drink",
    groups = ged,
    inventory_image = "white"..ed..".png",
    on_use = cie
})
core.register_alias("white"..ed, eds.."white"..ed)