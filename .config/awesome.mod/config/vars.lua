BASE_DIR = "/home/felix/.config/awesome/"
theme_dir = BASE_DIR .. "themes/"
terminal = "urxvt"
editor = os.getenv("EDITOR") or "nvim"
editor_cmd = terminal .. " -e " .. editor
bin = "/home/felix/.local/bin/"
modkey = "Mod4"
theme_name = "default"
