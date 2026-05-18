-- Created on 2026-05-17 17:44:51.


-- 忽略所有来自应用的最大化的请求
local suppressMaximizeRule = hl.window_rule({
	name  = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

-- 修复xwayland的拖拽问题
hl.window_rule({
	name  = "fix-xwayland-drags",
	match = {
		class		= "^$",
		title		= "^$",
		xwayland	= true,
		float		= true,
		fullscreen	= false,
		pin			= false,
    },

	no_focus = true,
})

hl.window_rule({
	name = "clipse",
	match = {
		initial_class = "clipse",
	},
--	move  = "20 monitor_h-120",
	size = {622, 652},
    float = true,
})
