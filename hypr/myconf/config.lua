-- Created on 2026-05-17 18:13:01.


hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.config({
	general = {
		gaps_in = 7,
		gaps_out = 14,
		border_size = 0,
		col = {
			active_border = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45},
			inactive_border = "rgba(595959aa)",
		},
		resize_on_border = false,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 17,
		rounding_power = 2,
		active_opacity = 1,
		inactive_opacity = 0.9,
		shadow = {
			enabled = true,
			range = 30,
			render_power = 13,
			--color = rgba( 49, 107, 121, 0.8),
			color = 0xee1a1a1a,
		},
		blur = {
			enabled = true,
			size = 5,
			passes = 1,
			vibrancy = 0.1696,
		},
	},

	animations = {
		enabled = true,
	},
})

hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })

hl.curve("easy",           { type = "spring", mass = 2, stiffness = 50, dampening = 15.8273644 })

hl.animation({ leaf = "global",        enabled = true,  speed = 6.7,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 3.6, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 3.2, spring = "easy" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 2.7,  spring = "easy",         style = "popin 80%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 1.0, bezier = "linear",       style = "popin 80%" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.15, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 0.97, bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 2.0, bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 2.5, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 2.7,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.0,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.2, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 0.93, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 1.3, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 0.8, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 1.3, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 4.7,    bezier = "quick" })

hl.config({
	dwindle = {
		preserve_split = true,
	},
})

hl.config({
	master = {
		new_status = "master",
	},
})

hl.config({
	scrolling = {
		fullscreen_on_one_column = true,
	},
})

hl.config({
	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo   = true,
	},
})

hl.config({
	input = {
		kb_layout  = "us",
		kb_variant = "",
		kb_model   = "",
		kb_options = "",
		kb_rules   = "",

		follow_mouse = 1,

		sensitivity = 1.0,

		touchpad = {
			natural_scroll = true,
		},
	},
})


hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace"
})

hl.device({
	name = "epic-mouse-v1",
	sensitivity = -0.5,
})
