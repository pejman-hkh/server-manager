function getUrl {
	bn=$(basename $1)
	if [ ! -f "$bn" ]; then
		wget $1
	fi
}


function extractFile {
	if [ ! -d $1 ]; then
		extension="${1##*.}"
		filename="${1%.*}"

		if [ $extension = "gz" ]; then
			tar -xvzf $1
		elif [ $extension = "zip" ]; then
			unzip $1
		elif [ $extension = "xz" ]; then
			tar -xf $1
		else
			tar -xvzf $1
		fi
	fi
}
