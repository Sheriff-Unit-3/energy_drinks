-- mod load paths
local default_load = core.get_modpath("default")
local basic_materials_load = core.get_modpath("basic_materials")
local farming_load = core.get_modpath("farming")
local x_farming_load = core.get_modpath("x_farming")
local sugar_load = core.get_modpath("sugar")
local dye_load = core.get_modpath("dye")
local bucket_load = core.get_modpath("bucket")
local mcl_core_load = core.get_modpath("mcl_core")
local mcl_buckets_load = core.get_modpath("mcl_buckets")
local mcl_dyes_load = core.get_modpath("mcl_dyes")
local mcl_dye_load = core.get_modpath("mcl_dye")

-- short hand
local pb = "plastic_bottle"
local ed6 = "_energy_drink 6"
local mcs = "mcl_core:sugar"
local md = "mcl_dye"

-- default support
if default_load or basic_materials_load then
    if basic_materials_load then
        core.register_craft({
            output = "energy_drink:bottle 2",
        recipe = {{"basic_materials:plastic_sheet"}, {"basic_materials:plastic_sheet"}}
        })
    else
        -- makes empty bottles
        core.register_craft({
            output = "energy_drinks:bottle 2",
            recipe = {{"default:papyrus"}, {"default:papyrus"}}
        })
    end
end

-- dye and bucket support
if dye_load and bucket_load and farming_load or x_farming_load or sugar_load then
    local bw = "group:water_bucket"
    local b = "bucket"
    if farming.mod == "redo" then
        local fs = "farming:sugar"
        -- makes red_drink
        core.register_craft({
            output = "red"..ed6,
            recipe = {
                {"dye:red", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
           },
           replacements = {{bw, b}}
        })
        core.register_craft({
            output = "blue"..ed6,
            recipe = {
                {"dye:blue", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
        core.register_craft({
            output = "yellow"..ed6,
            recipe = {
                {"dye:yellow", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
        core.register_craft({
            output = "orange"..ed6,
            recipe = {
                {"dye:orange", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
        core.register_craft({
            output = "green"..ed6,
            recipe = {
                {"dye:green", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
        core.register_craft({
            output = "white"..ed6,
            recipe = {
                {"dye:blue", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
    elseif x_farming_load then
        local fs = "x_farming:sugar"
        -- makes red_drink
        core.register_craft({
            output = "red"..ed6,
            recipe = {
                {"dye:red", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
           },
           replacements = {{bw, b}}
        })
        core.register_craft({
            output = "blue"..ed6,
            recipe = {
                {"dye:blue", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
        core.register_craft({
            output = "yellow"..ed6,
            recipe = {
                {"dye:yellow", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
        core.register_craft({
            output = "orange"..ed6,
            recipe = {
                {"dye:orange", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
        core.register_craft({
            output = "green"..ed6,
            recipe = {
                {"dye:green", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
        core.register_craft({
            output = "white"..ed6,
            recipe = {
                {"dye:blue", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
    elseif sugar_load then
        local fs = "sugar:sugar"
        -- makes red_drink
        core.register_craft({
            output = "red"..ed6,
            recipe = {
                {"dye:red", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
           },
           replacements = {{bw, b}}
        })
        core.register_craft({
            output = "blue"..ed6,
            recipe = {
                {"dye:blue", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
        core.register_craft({
            output = "yellow"..ed6,
            recipe = {
                {"dye:yellow", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
        core.register_craft({
            output = "orange"..ed6,
            recipe = {
                {"dye:orange", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
        core.register_craft({
            output = "green"..ed6,
            recipe = {
                {"dye:green", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
        core.register_craft({
            output = "white"..ed6,
            recipe = {
                {"dye:blue", bw, fs},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
    else
        -- makes red_drink
        core.register_craft({
            output = "red"..ed6,
            recipe = {
                {"dye:red", bw, "dye:red"},
                {pb, pb, pb},
                {pb, pb, pb}
           },
           replacements = {{bw, b}}
        })
        core.register_craft({
            output = "blue"..ed6,
            recipe = {
                {"dye:blue", bw, "dye:blue"},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
        core.register_craft({
            output = "yellow"..ed6,
            recipe = {
                {"dye:yellow", bw, "dye:yellow"},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
        core.register_craft({
            output = "orange"..ed6,
            recipe = {
                {"dye:orange", bw, "dye:orange"},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
        core.register_craft({
            output = "green"..ed6,
            recipe = {
                {"dye:green", bw, "dye:green"},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
        core.register_craft({
            output = "white"..ed6,
            recipe = {
                {"dye:white", bw, "dye:white"},
                {pb, pb, pb},
                {pb, pb, pb}
            },
            replacements = {{bw, b}}
        })
    end
end

-- mineclonia support
if mcl_buckets_load and mcl_dyes_load and mcl_core_load then
    local bw = "mcl_buckets:bucket_water"
    local b = "mcl_buckets:bucket_empty"
    -- makes empty bottle
    core.register_craft({
        output = "energy_drinks:bottle 2",
        recipe = {{"mcl_core:reeds"}, {"mcl_core:reeds"}}
    })
    -- makes red_drink
    core.register_craft({
        output = "red"..ed6,
        recipe = {
            {md.."s:red", bw, mcs},
            {pb, pb, pb},
            {pb, pb, pb}
        },
        replacements = {{bw, b}}
    })
    core.register_craft({
        output = "blue"..ed6,
        recipe = {
            {md.."s:blue", bw, mcs},
            {pb, pb, pb},
            {pb, pb, pb}
        },
        replacements = {{bw, b}}
    })
    core.register_craft({
        output = "yellow"..ed6,
        recipe = {
            {md.."s:yellow", bw, mcs},
            {pb, pb, pb},
            {pb, pb, pb}
        },
        replacements = {{bw, b}}
    })
    core.register_craft({
        output = "orange"..ed6,
        recipe = {
            {md.."s:orange", bw, mcs},
            {pb, pb, pb},
            {pb, pb, pb}
        },
        replacements = {{bw, b}}
    })
    core.register_craft({
        output = "green"..ed6,
        recipe = {
            {md.."s:green", bw, mcs},
            {pb, pb, pb},
            {pb, pb, pb}
        },
        replacements = {{bw, b}}
    })
    core.register_craft({
        output = "white"..ed6,
        recipe = {
            {md.."s:white", bw, mcs},
            {pb, pb, pb},
            {pb, pb, pb}
        },
        replacements = {{bw, b}}
    })
end

-- voxel libre support
if mcl_buckets_load and mcl_dye_load and mcl_core_load then
    local bw = "mcl_buckets:bucket_water"
    local b = "mcl_buckets:bucket_empty"
    -- makes empty bottle
    core.register_craft({
        output = "energy_drinks:bottle 2",
        recipe = {{"mcl_core:reeds"}, {"mcl_core:reeds"}}
    })
    -- makes red_drink
    core.register_craft({
        output = "red"..ed6,
        recipe = {
            {md..":red", bw, mcs},
            {pb, pb, pb},
            {pb, pb, pb}
        },
        replacements = {{bw, b}}
    })
    core.register_craft({
        output = "blue"..ed6,
        recipe = {
            {md..":blue", bw, mcs},
            {pb, pb, pb},
            {pb, pb, pb}
        },
        replacements = {{bw, b}}
    })
    core.register_craft({
        output = "yellow"..ed6,
        recipe = {
            {md..":yellow", bw, mcs},
            {pb, pb, pb},
            {pb, pb, pb}
        },
        replacements = {{bw, b}}
    })
    core.register_craft({
        output = "orange"..ed6,
        recipe = {
            {md..":orange", bw, mcs},
            {pb, pb, pb},
            {pb, pb, pb}
        },
        replacements = {{bw, b}}
    })
    core.register_craft({
        output = "green"..ed6,
        recipe = {
            {md..":green", bw, mcs},
            {pb, pb, pb},
            {pb, pb, pb}
        },
        replacements = {{bw, b}}
    })
    core.register_craft({
        output = "white"..ed6,
        recipe = {
            {md..":white", bw, mcs},
            {pb, pb, pb},
            {pb, pb, pb}
        },
        replacements = {{bw, b}}
    })
end