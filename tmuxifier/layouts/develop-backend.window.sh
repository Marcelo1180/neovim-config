# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/develop-backend"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "develop-backend"

# Split window into panes.
split_h 40
select_pane 1
split_v 20
select_pane 3
split_v 90
select_pane 3
split_h 50
select_pane 5
split_v 50

select_pane 1
run_cmd "nvim"
select_pane 2
run_cmd "source ../bin/activate"
select_pane 3
run_cmd "htop"
select_pane 5
run_cmd "PGPASSWORD=$POSTGRESQL_PASS psql -U $POSTGRESQL_USER"
select_pane 6
run_cmd "tig"


select_pane 1

