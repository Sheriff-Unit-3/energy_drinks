;; Local variables for each supported mod
(local default-load (core.get_modpath :default))
(local basic-materials-load (core.get_modpath :basic_materials))
(local farming-load (core.get_modpath :farming))
(local x-farming-load (core.get_modpath :x_farming))
(local sugar-load (core.get_modpath :sugar))
(local dye-load (core.get_modpath :dye))
(local bucket-load (core.get_modpath :bucket))
(local mcl-core-load (core.get_modpath :mcl_core))
(local mcl-buckets-load (core.get_modpath :mcl_buckets))
(local mcl-dyes-load (core.get_modpath :mcl_dyes))
(local mcl-dye-load (core.get_modpath :mcl_dye))

;; Localize the global table
(local drinks energy-drinks.drinks)

;; Our bottle
(local pb :plastic_bottle)

;; Register the bottle recipe for MTG
(when (or default-load basic-materials-load)
	(if basic-materials-load
		(core.register_craft {
			:output "energy_drink:bottle 2"
			:recipe [
				["basic_materials:plastic_sheet"]
				["basic_materials:plastic_sheet"]
			]
		})
		(core.register_craft {
			:output "energy_drinks:bottle 2"
			:recipe [["default:papyrus"] ["default:papyrus"]]
		})
	)
)

;; Register the drinks recipes for MTG
(when (or (or (and (and dye-load bucket-load) farming-load) x-farming-load) sugar-load)
	(if (= farming.mod :redo)
		(each [drink _ (pairs drinks)]
			(core.register_craft {
				:output (.. drink "_energy_drink 6")
				:recipe [
					[
						(.. "dye:" drink)
						"group:water_bucket"
						"farming:sugar"
					]
					[pb pb pb]
					[pb pb pb]
				]
				:replacements [["group:water_bucket" :bucket]]
			})
		)
	x-farming-load ;; Else if
		(each [drink _ (pairs drinks)]
			(core.register_craft {:output (.. drink "_energy_drink 6")
				:recipe [
					[
						(.. "dye:" drink)
						"group:water_bucket"
						"x_farming:sugar"
					]
					[pb pb pb]
					[pb pb pb]
				]
				:replacements [["group:water_bucket" :bucket]]
			})
		)
	sugar-load ;; Else if
		(each [drink _ (pairs drinks)]
			(core.register_craft {
				:output (.. drink "_energy_drink 6")
				:recipe [
					[
						(.. "dye:" drink)
						"group:water_bucket"
						"sugar:sugar"
					]
					[pb pb pb]
					[pb pb pb]
				]
				:replacements [["group:water_bucket" :bucket]]
			})
		)
	;; Else
		(each [drink _ (pairs drinks)]
			(core.register_craft {
				:output (.. drink "_energy_drink 6")
				:recipe [
					[
						(.. "dye:" drink)
						"group:water_bucket"
						(.. "dye:" drink)
					]
					[pb pb pb]
					[pb pb pb]
				]
				:replacements [["group:water_bucket" :bucket]]
			})
		)
	)
)

;; Register the drinks recipes for Mineclonia
(when (and (and mcl-buckets-load mcl-dyes-load) mcl-core-load)
	(core.register_craft {
		:output "energy_drinks:bottle 2"
		:recipe [["mcl_core:reeds"] ["mcl_core:reeds"]]
	})
	(each [drink _ (pairs drinks)]
		(core.register_craft {
			:output (.. drink "_energy_drink 6")
			:recipe [
				[
					(.. "mcl_dyes:" drink)
					"mcl_buckets:bucket_water"
					"mcl_core:sugar"
				]
				[pb pb pb]
				[pb pb pb]
			]
			:replacements [[
				"mcl_buckets:bucket_water"
				"mcl_buckets:bucket_empty"
			]]
		})
	)
)

;; Register the drinks recipes for Mineclone2
(when (and (and mcl-buckets-load mcl-dye-load) mcl-core-load)
	(core.register_craft {
		:output "energy_drinks:bottle 2"
		:recipe [["mcl_core:reeds"] ["mcl_core:reeds"]]
	})
	(each [drink _ (pairs drinks)]
		(core.register_craft {
			:output (.. drink "_energy_drink 6")
			:recipe [
				[
					(.. "mcl_dye:" drink)
					"mcl_buckets:bucket_water"
					"mcl_core:sugar"
				]
				[pb pb pb]
				[pb pb pb]
			]
			:replacements [[
				"mcl_buckets:bucket_water"
				"mcl_buckets:bucket_empty"
			]]
		})
	)
)