-- Created on 2026-05-17 16:15:18.


local bind = hl.bind
local dsp = hl.dsp

local mainMod = "SUPER"
local terminal = "foot"
local fileManager = "spf"
local appMenu = "wofi --show drun"
local clipboard = "clipse"


bind(mainMod .. " + RETURN", dsp.exec_cmd(terminal))
bind(mainMod .. " + Q", dsp.window.close())
bind(mainMod .. " + SHIFT + Q", dsp.exit())
bind(mainMod .. " + M", dsp.exec_cmd(terminal .. " -e " .. fileManager))
bind(mainMod .. " + F", dsp.window.float({ action = "toggle"}))
bind(mainMod .. " + D", dsp.exec_cmd(appMenu))
bind(mainMod .. " + A", dsp.window.fullscreen())
bind(mainMod .. " + H", dsp.exec_cmd(terminal .. " -a clipse -e " .. clipboard))
--bind(mainMod .. " + P", dsp.window.pseudo())
--bind(mainMod .. " + J", dsp.layout("togglesplit"))
--bind(mainMod .. " + S",         dsp.workspace.toggle_special("magic"))
--bind(mainMod .. " + SHIFT + S", dsp.window.move({ workspace = "special:magic" }))

bind(mainMod .. " + left", dsp.focus({ direction = "left"}))
bind(mainMod .. " + right", dsp.focus({ direction = "right"}))
bind(mainMod .. " + up", dsp.focus({ direction = "up"}))
bind(mainMod .. " + down", dsp.focus({ direction = "down"}))

for i = 1, 10 do
	local key = i % 10
	bind(mainMod .. " + " .. key, dsp.focus({ workspace = i}))
	bind(mainMod .. " + SHIFT + " .. key, dsp.window.move({ workspace = i}))
end

bind(mainMod .. " + mouse_down", dsp.focus({ workspace = "e+1" }))
bind(mainMod .. " + mouse_up",   dsp.focus({ workspace = "e-1" }))
bind(mainMod .. " + mouse:272", dsp.window.drag(),   { mouse = true })
bind(mainMod .. " + mouse:273", dsp.window.resize(), { mouse = true })

bind("XF86AudioRaiseVolume", dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
bind("XF86AudioLowerVolume", dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
bind("XF86AudioMute",        dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
bind("XF86AudioMicMute",     dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
bind("XF86MonBrightnessUp",  dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
bind("XF86MonBrightnessDown",dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

bind("XF86AudioNext",  dsp.exec_cmd("playerctl next"),       { locked = true })
bind("XF86AudioPause", dsp.exec_cmd("playerctl play-pause"), { locked = true })
bind("XF86AudioPlay",  dsp.exec_cmd("playerctl play-pause"), { locked = true })
bind("XF86AudioPrev",  dsp.exec_cmd("playerctl previous"),   { locked = true })


