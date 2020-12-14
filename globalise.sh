# This file is called "globalise" (no quotes or extension)
# and is located in /usr/bin/

clear
cd Documents/Coding/QuickScripts
ls
echo ''
echo 'Which file are you trying to globalise?'
read selection
echo 'What name would you like to give this command?'
read name
echo 'Please select a file type (1 = shell, 2 = python):'
read file_type


if [ $file_type -eq 1 ]
then
	cp $selection /usr/bin/$selection
	cd /usr/bin/
	chmod u+x $selection
	mv $selection $name
elif [ $file_type -eq 2  ]
then
	echo 'cd' >> /usr/bin/$name.sh
	echo 'python3 Documents/Coding/QuickScripts/$selection' >> /usr/bin/$name.sh
	cd /usr/bin/
	chmod u+x $selection
	mv $name.sh $name
	
else
	echo 'One more try; 1 for shell, 2 for python:'
	read file_type
fi
