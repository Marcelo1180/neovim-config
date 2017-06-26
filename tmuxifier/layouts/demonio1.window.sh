# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/demonio1"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "demonio1"

# Split window into panes.
split_v 60
select_pane 1
split_h 40
select_pane 3
split_h 50
select_pane 3
split_v 50


select_pane 2
run_cmd "source ../bin/activate"
run_cmd "alias khal='khal -c $session_root$khal_config'"
run_cmd "clear"
run_cmd "khal interactive"

select_pane 1
run_cmd "source ../bin/activate"
run_cmd "export KANBANFILE=$session_root$kanban_file"
run_cmd "export KANBANCONF=$session_root$kanban_config"
run_cmd "alias k=kanban"
run_cmd "clear"
run_cmd "k show"

select_pane 3
run_cmd "export TODOTXT_DEFAULT_ACTION=ls"
run_cmd "alias t='todo-txt -d $session_root$todo_config'"
run_cmd "clear"
run_cmd "t"


select_pane 5
run_cmd "mutt"

# Run commands.
#run_cmd "top"     # runs in active pane
#run_cmd "date" 1  # runs in pane 1

# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into pane 1

# Set active pane.
#select_pane 0
