-- Created on 2026-05-17 18:06:16.


hl.on("hyprland.start", function ()
	hl.exec_cmd("waybar")
	hl.exec_cmd("mako")
	hl.exec_cmd("fcitx5 -d")
	hl.exec_cmd("clipse -listen")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("hyprsunset")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
end)
