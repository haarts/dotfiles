function ack
	switch (uname)
	case "*Darwin*"
		command ack -k $argv
	case "*Linux*"
		ack-grep -k $argv
	end
end
