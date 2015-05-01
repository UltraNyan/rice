find /usr/share/figlet -name *.?lf -exec basename {}  \; | sed -e "s/\..lf$//" | xargs -I{} toilet -tf {} {}
