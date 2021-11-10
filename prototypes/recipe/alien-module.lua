-- make alien plate from alien ore --

-- if bobs enemies is enabled, make conversion of alien artifacts possible

-- alien-module-1 from alien-plate --
data:extend({
	{
		type = "recipe",
		name = "alien-module-1",
		enabled = false,
		energy_required = 20,
		result = "alien-module-1",
		result_count = 1,
		ingredients = {
			{ "electronic-circuit", 75 }
		},
	},
})

-- alien-module-2 --
data:extend({
	{
		type = "recipe",
		name = "alien-module-2",
		enabled = false,
		energy_required = 40,
		result = "alien-module-2",
		result_count = 1,
		ingredients = {
			{ "alien-module-1", 3 },
			{ "electronic-circuit", 20 }
		},
	},
})

-- alien-module-3 --
data:extend({
	{
		type = "recipe",
		name = "alien-module-3",
		enabled = false,
		energy_required = 60,
		result = "alien-module-3",
		result_count = 1,
		ingredients = {
			{ "alien-module-2", 3 },
			{ "advanced-circuit", 20 }
		},
	},
})

-- alien-module-4 --
data:extend({
	{
		type = "recipe",
		name = "alien-module-4",
		enabled = false,
		energy_required = 80,
		result = "alien-module-4",
		result_count = 1,
		ingredients = {
			{ "alien-module-3", 3 },
			{ "processing-unit", 10 }
		},
	},
})

-- alien-module-5 --
data:extend({
	{
		type = "recipe",
		name = "alien-module-5",
		enabled = false,
		energy_required = 100,
		result = "alien-module-5",
		result_count = 1,
		ingredients = {
			{ "alien-module-4", 3 },
			{ "processing-unit", 20 }
		},
	},
})

-- alien-hyper-module --
for i = 1, 100, 1 do
	data:extend({
		{
			type = "recipe",
			name = "alien-hyper-module-" .. i,
			enabled = false,
			energy_required = i,
			result = "alien-hyper-module-" .. i,
			result_count = 1,
			ingredients = {
				{ "advanced-circuit", 25 * i }
			},
		},
	})
end