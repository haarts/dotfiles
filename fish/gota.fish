function gota
	set -xg GOPATH ~/prj/kabisa/data-services
	set -xg WITHOUT_RABBITS 1
	set -xg GO_CONFIG {$GOPATH}/config/test.conf
	set dirs (find src/directlife -type d)
	for dir in $dirs
		set package (echo $dir | sed 's/src\///')
		go test $package
		echo $package
	end
end
