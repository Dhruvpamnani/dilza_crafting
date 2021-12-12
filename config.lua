-- https://docs.fivem.net/docs/game-references/blips/

BlipSprite = 237,
BlipColor = 26,
BlipText = 'Workbench', 

CraftingStopWithDistance = false, -- Crafting will stop when not near workbench

ExperiancePerCraft = , -- The amount of experiance added per craft (100 Experiance is 1 level)

HideWhenCantCraft = true, -- Instead of lowering the opacity it hides the item that is not craftable due to low level or wrong job

Categories = {

	['tools'] = {
		Label = 'TOOLS',
		Image = 'tools',
		Jobs = {}
	},
	['food'] = {
		Label = 'FOOD',
		Image = 'food',
		Jobs = {}
	},
	['weapons'] = {
		Label = 'WEAPONS',
		Image = 'weapons',
		Jobs = {}
	},
	['medical'] = {
		Label = 'MEDICAL',
		Image = 'bandage',
		Jobs = {'ambulance'}
	},
	['mechanic'] = {
		Label = 'MECHANIC',
		Image = 'carparts',
		Jobs = {'mechanic'}
	},
	['tuning'] = {
		Label = 'Tuning',
		Image = 'nos',
		Jobs = {'mechanic'}
	},
},

PermanentItems = { 
	--['item-name'] = true set tureif you don't want the item to be removed during crafting
},

Recipes = { -- Items to craft

['weapon_pistol'] = {
 Level = 0, -- From what level this item will be craftable
 Category = 'weapons', -- The category item will be put in
 isGun = true, -- Specify if this is a gun so it will be added to the loadout
 Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
 JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
 Amount = 1, -- The amount that will be crafted
 SuccessRate = 90, -- 100% you will recieve the item
 requireBlueprint = false, -- Requires a blueprint whitch you need to add in shared.lua yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
 Time = 30, -- Time in seconds it takes to craft this item
 Ingredients = { -- Ingredients needed to craft this item
	 ['iron'] = 10,
	 ['rubber'] = 3-- item name and count, adding items that dont exist in database will crash the script
	}
},
['weapon_microsmg'] = {
	Level = 1, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 80, -- 100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 30, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['iron'] = 20,
		['rubber'] = 5,-- item name and count, adding items that dont exist in database will crash the script
	}
},
['lockpick'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'tools', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, -- 100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['aluminum'] = 1,
		['iron'] = 1,
		['rubber'] = 1, -- item name and count, adding items that dont exist in database will crash the script
	}
}, 
['pistol_suppressor'] = {
	Level = 2, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 2, -- The amount that will be crafted
	SuccessRate = 100, -- 100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['rubber'] = 20,
		['iron'] = 3, -- item name and count, adding items that dont exist in database will crash the script
	}
},
['pistol_ammo'] = {
	Level = 2, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 3, -- The amount that will be crafted
	SuccessRate = 100, -- 100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['iron'] = 3,
		['aluminum'] = 1, -- item name and count, adding items that dont exist in database will crash the script
	}
},
['smg_ammo'] = {
	Level = 2, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 3, -- The amount that will be crafted
	SuccessRate = 100, -- 100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['iron'] = 5,
		['aluminum'] = 2, -- item name and count, adding items that dont exist in database will crash the script
	}
},
},

Workbenches = { -- Every workbench location, leave {} for jobs if you want everybody to access
	{coords = vector3(905.71, -3230.99, -97.33), jobs = {}, blip = false, recipes = {'smg_ammo', 'pistol_ammo', 'pistol_suppressor', 'lockpick', 'weapon_microsmg', 'weapon_pistol'}, radius = 2.0 }
},
}