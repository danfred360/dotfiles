#-@ based on <https://meyerweb.com/eric/thoughts/2020/09/29/polite-bash-commands/>
function rodo --description 'run last or presented command as root'
	if test -n "$argv"
		sudo fish -c "$argv"
	else
		sudo fish -c "$history[1]"
	end
end
