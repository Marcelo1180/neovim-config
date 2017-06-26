# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
read -p "ImageID: " imageid

base_path=(dialog --backtitle "System Information" --title "About" --dselect /home/marcelo/MARCELO/SEGUIMIENTO/ 50 60)
echo $base_path

session_root "~/MARCELO/SEGUIMIENTO/RRHH/Code/rrhh-control-personal-backend/rrhh-control-personal-backend/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "cprrhh_backend"; then

  # Create a new window inline within session layout definition.
  #new_window "misc"

  # Load a defined window layout.
  load_window "develop-backend"

  # Select the default active window on session creation.
  select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
