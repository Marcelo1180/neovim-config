# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/MARCELO/SEGUIMIENTO/PROYECTOS/Code/asgard/"
 # session_root "~/MARCELO/SEGUIMIENTO/LAZARO/lazaro/"
khal_config="khal/config/khal.conf"
kanban_config="kanban/config/kanban.conf"
kanban_file="kanban/files/kanban.csv"
todo_config="todo/config/todo.conf"
# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "agetic"; then

  # Create a new window inline within session layout definition.
  #new_window "misc"

  # Load a defined window layout.
  load_window "demonio1"

  # Select the default active window on session creation.
  #select_window 1
  # run_cmd "htop"

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
