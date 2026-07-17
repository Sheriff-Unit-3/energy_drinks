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

local drinks = energy_drinks.drinks
local pb = "plastic_bottle"

if default_load or basic_materials_load then
   if basic_materials_load then
      core.register_craft({
         output = "energy_drink:bottle 2",
         recipe = { { "basic_materials:plastic_sheet" }, { "basic_materials:plastic_sheet" } },
      })
   else

      core.register_craft({
         output = "energy_drinks:bottle 2",
         recipe = { { "default:papyrus" }, { "default:papyrus" } },
      })
   end
end

if dye_load and bucket_load and farming_load or x_farming_load or sugar_load then
   if farming.mod == "redo" then

      for drink, _ in pairs(drinks) do
         core.register_craft({
            output = drink .. "_energy_drink 6",
            recipe = {
               { "dye:" .. drink, "group:water_bucket", "farming:sugar" },
               { pb, pb, pb },
               { pb, pb, pb },
            },
            replacements = { { "group:water_bucket", "bucket" } },
         })
      end
   elseif x_farming_load then

      for drink, _ in pairs(drinks) do
         core.register_craft({
            output = drink .. "_energy_drink 6",
            recipe = {
               { "dye:" .. drink, "group:water_bucket", "x_farming:sugar" },
               { pb, pb, pb },
               { pb, pb, pb },
            },
            replacements = { { "group:water_bucket", "bucket" } },
         })
      end
   elseif sugar_load then

      for drink, _ in pairs(drinks) do
         core.register_craft({
            output = drink .. "_energy_drink 6",
            recipe = {
               { "dye:" .. drink, "group:water_bucket", "sugar:sugar" },
               { pb, pb, pb },
               { pb, pb, pb },
            },
            replacements = { { "group:water_bucket", "bucket" } },
         })
      end
   else

      for drink, _ in pairs(drinks) do
         core.register_craft({
            output = drink .. "_energy_drink 6",
            recipe = {
               { "dye:" .. drink, "group:water_bucket", "dye:" .. drink },
               { pb, pb, pb },
               { pb, pb, pb },
            },
            replacements = { { "group:water_bucket", "bucket" } },
         })
      end
   end
end

if mcl_buckets_load and mcl_dyes_load and mcl_core_load then

   core.register_craft({
      output = "energy_drinks:bottle 2",
      recipe = { { "mcl_core:reeds" }, { "mcl_core:reeds" } },
   })
   for drink, _ in pairs(drinks) do
      core.register_craft({
         output = drink .. "_energy_drink 6",
         recipe = {
            { "mcl_dyes:" .. drink, "mcl_buckets:bucket_water", "mcl_core:sugar" },
            { pb, pb, pb },
            { pb, pb, pb },
         },
         replacements = { { "mcl_buckets:bucket_water", "mcl_buckets:bucket_empty" } },
      })
   end
end

if mcl_buckets_load and mcl_dye_load and mcl_core_load then

   core.register_craft({
      output = "energy_drinks:bottle 2",
      recipe = { { "mcl_core:reeds" }, { "mcl_core:reeds" } },
   })
   for drink, _ in pairs(drinks) do
      core.register_craft({
         output = drink .. "_energy_drink 6",
         recipe = {
            { "mcl_dye:" .. drink, "mcl_buckets:bucket_water", "mcl_core:sugar" },
            { pb, pb, pb },
            { pb, pb, pb },
         },
         replacements = { { "mcl_buckets:bucket_water", "mcl_buckets:bucket_empty" } },
      })
   end
end
