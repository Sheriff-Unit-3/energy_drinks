global record core
  register_craftitem: function(name: string, definition: table)
	register_craft: function(definition: table)
	register_alias: function(alias: string, name: string)
	item_eat: function(hp_change: integer, item_string?: string)
	get_translator: function(textdomain: string): (function(string...): string, function(string...): string)
	get_modpath: function(name: string): string
	get_current_modname: function(): string
end

global record farming
	mod: string
end

global record energy_drinks
  S: function(string...): string
  PS: function(string...): string
  drinks: {string: string}
end