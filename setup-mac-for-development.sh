#!/bin/zsh

clear
echo
echo "\n
      CTH24\n
      Setup Mac Development\n
      ---------------\n
      https://github.com/CTH24/setup-mac-for-development\n
      Version: 1.0\n
      " | boxes -d twisted -a c
echo

echo '\t1: Install Basics'
echo '\t2: Install User Interface Tool'
echo '\t3: Install Development Tools'
echo '\t4: Install Office Tools'
echo '\t5: Install DevOps Tools'
echo '\t6: Install Communication Tools'
echo '\t7: Install Graphic Tools'
echo '\t8: Install Gaming'

echo
echo '\ti: Install All                    \t\tu: Update All'
echo '\tx: Exit'
echo '\n'

read -p "        Your choice: " selection

# Basics
if [ "$selection" == "1" ]; then
  clear
  for f in ./setup/basics/**; do sh $f; done

fi

# User Interface
if [ "$selection" == "2" ]; then
  clear
  for f in ./setup/ui/**; do sh $f; done
fi

# Development
if [ "$selection" == "3" ]; then
  clear
  for f in ./setup/development/**; do sh $f; done
fi

# Office
if [ "$selection" == "4" ]; then
  clear
  for f in ./setup/office/**; do sh $f; done
fi

# DevOps
if [ "$selection" == "5" ]; then
  clear
  for f in ./setup/devops/**; do sh $f; done
fi

# Communication
if [ "$selection" == "6" ]; then
  clear
  for f in ./setup/communication/**; do sh $f; done
fi

# Graphic
if [ "$selection" == "7" ]; then
  clear
  for f in ./setup/graphic/**; do sh $f; done
fi

# Gaming
if [ "$selection" == "8" ]; then
  clear
  for f in ./setup/gaming/**; do sh $f; done
fi

# Update
if [ "$selection" == "u" ]; then
  clear
  sh ./update/update_homebrew_packages.sh
fi

# Install All Packages
if [ "$selection" == "i" ]; then
  clear
  for f in ./setup/basics/**; do sh $f; done
  for f in ./setup/development/**; do sh $f; done
  for f in ./setup/ui/**; do sh $f; done
  for f in ./setup/office/**; do sh $f; done
  for f in ./setup/devops/**; do sh $f; done
  for f in ./setup/communication/**; do sh $f; done
  for f in ./setup/graphic/**; do sh $f; done
  for f in ./setup/gaming/**; do sh $f; done
fi

if [ "$selection" == "x" ]; then
  clear
  exit
fi

echo
read -p "Press any key to resume ..."
echo

sh ./setup-mac-for-development.sh
