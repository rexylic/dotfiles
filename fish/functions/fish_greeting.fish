function fish_greeting
	_pure_check_for_new_release
	set -Ux VIMBG (dark-notify -e)
  fastfetch -l small
end
