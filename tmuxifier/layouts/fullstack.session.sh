# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#read -p "ImageID: " imageid
source $HOME/neovim-config/tmuxifier/layouts/settings.sh
base_path=`dialog --backtitle "System Information" --title "About" --dselect $BASEPATH 20 30 --output-fd 1`

if initialize_session "fulls"; then
    for f in $base_path/Code/*;
        do
            is_frontend $f
            is_python $f
            window_root $_window_root
            if [ "$_is_frontend" = true ] ; then
                load_window "develop-frontend"
            else
                load_window "develop-backend"
            fi
  done
  select_window 1
fi

finalize_and_go_to_session
