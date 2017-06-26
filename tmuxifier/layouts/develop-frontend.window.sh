# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/develop-backend"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "develop-frontend"

# Split window into panes.
split_h 40
select_pane 1
split_v 20
select_pane 3
split_v 80
#select_pane 3
#split_h 50
select_pane 4
split_v 50

select_pane 1
run_cmd "nvim"
#select_pane 2
#run_cmd ""
select_pane 3
run_cmd "fortune -s|cowsay -e @@|less"
select_pane 4
run_cmd "echo '{\"username\": \"jarteaga\", \"password\": \"Developer\"}' | http POST http://test.local.agetic.gob.bo/plantillas-api/autenticar"
select_pane 5
run_cmd "tig"


select_pane 1

# Run commands.
#run_cmd "top"     # runs in active pane
#run_cmd "date" 1  # runs in pane 1

# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into pane 1

# Set active pane.
#select_pane 0
