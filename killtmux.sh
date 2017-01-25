for i in `tmux ls | cut -d ':' -f 1`;
do
   tmux kill-session -t $i;
done
