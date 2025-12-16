-- mod load paths
local default_load = core.get_modpath("default")
local farming_load = core.get_modpath("farming")
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
local fs = "farming:sugar"

-- default support
if default_load then
    -- makes empty bottles
    core.register_craft({
        output = "energy_drinks:bottle 2",
        recipe = {{"default:papyrus"}, {"default:papyrus"}}
    })
end

-- dye and bucket support
if dye_load and bucket_load and farming_load then
    local bw = "bucket_water"
    local b = "bucket"
    if farming.mod == "redo" then
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