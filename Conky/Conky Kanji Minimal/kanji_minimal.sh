#!/bin/bash

function newLine {
	for ((i=0; i<$1; i++))
	do
        	printf "\n"
	done
}

# conky variables (fonts and colors)
FONT1='EPSON 正楷書体Ｍ:size=60'	# kanji font 1
FONT4='EPSON 行書体Ｍ:size=42'	# kanji font 2
FONT5='EPSON 太丸ゴシック体Ｂ:size=42'	# kanji font 3
FONT6='EPSON 行書体Ｍ:size=42'	# kanji font 4

FONT2='Ubuntu:size=15'              # font for help stings
FONT3='EPSON 行書体Ｍ:size=18'         # font for readings
COLOR1="#DBDFC3"				# kanji color
COLOR2="#ECB05F"				# color for help strings
COLOR3="#DBDFC3"				# font for readings
NLBEFORE=0					# new line(s) before conky line
NLAFTER=1					# new line(s) after conky line

# set kanji level (1-4), default level is 3
LEVEL="3"

# kanji level can be passed to the script
if [ ! $1 == "" ]; then
	if [ $1 == "1" ] ||
	   [ $1 == "2" ] ||
	   [ $1 == "3" ] ||
	   [ $1 == "4" ]; then
		LEVEL=$1
	fi
fi

# web page URL
URL="http://feeds.feedburner.com/Kanji-a-dayLevel"$LEVEL"?format=xml"

# get important lines of the web page
TEMP=$(wget -qO- $URL | sed '16,18!d' | iconv -f EUC-JP -t UTF-8)

# format strings
KANJI=${TEMP#*"<title>"}
TEMP=$KANJI
KANJI=${TEMP%%"</title>"*}
KANJI=${KANJI//" "/""}

ONREADING=${TEMP#*"on readings: "}
TEMP=$ONREADING
ONREADING=${TEMP%%"kun readings: "*}
ONREADING=${ONREADING//"&lt;br&gt;"/""}

KUNREADING=${TEMP#*"kun readings: "}
TEMP=$KUNREADING
KUNREADING=${TEMP%%"meaning(s): "*}
KUNREADING=${KUNREADING//"&lt;br&gt;"/""}
KUNREADING=${KUNREADING//"."/""}

MEANING=${TEMP#*"meaning(s): "}
TEMP=$MEANING
MEANING=${TEMP%%"img src"*}
MEANING=${MEANING//"&lt"/""}
MEANING=${MEANING:0:${#MEANING}-1}





TEMP2=$(wget -qO- $URL | sed '24,26!d' | iconv -f EUC-JP -t UTF-8)

# format strings
KANJI2=${TEMP2#*"<title>"}
TEMP2=$KANJI2
KANJI2=${TEMP2%%"</title>"*}
KANJI2=${KANJI2//" "/""}

ONREADING2=${TEMP2#*"on readings: "}
TEMP2=$ONREADING2
ONREADING2=${TEMP2%%"kun readings: "*}
ONREADING2=${ONREADING2//"&lt;br&gt;"/""}

KUNREADING2=${TEMP2#*"kun readings: "}
TEMP2=$KUNREADING2
KUNREADING2=${TEMP2%%"meaning(s): "*}
KUNREADING2=${KUNREADING2//"&lt;br&gt;"/""}
KUNREADING2=${KUNREADING2//"."/""}

MEANING2=${TEMP2#*"meaning(s): "}
TEMP2=$MEANING2
MEANING2=${TEMP2%%"img src"*}
MEANING2=${MEANING2//"&lt"/""}
MEANING2=${MEANING2:0:${#MEANING2}-1}



# print empty line(s) before conky line
newLine $NLBEFORE

# print conky lines
if [ ${#KUNREADING} == 0 ]; then
	# without kun reading and romaji
	MEANING=${MEANING:0:${#MEANING}-1}
	#printf "\${color $COLOR1}\${font $FONT1}$KANJI\${color}\${color $COLOR3}\${alignr}\${font $FONT3}$ONREADING\${color}\n\${color $COLOR2}\${font $FONT2}Meaning:\${color}\${color $COLOR3}\${alignr}\${font $FONT3}$MEANING\${color}\n"
	#printf "\${color $COLOR1}\${font $FONT1}$KANJI2\${color}\n\${voffset -120}\${color $COLOR2}\${font $FONT2} \${color}\${color $COLOR3}\${alignr}\${font $FONT3}$ONREADING2\${color}\n\${color $COLOR2}\${font $FONT2} \${color}\${color $COLOR3}\${alignr}\${font $FONT3}$KUNREADING2\${color}\n\${color $COLOR2}\${font $FONT2} \${color}\${color $COLOR3}\${alignr}\${font $FONT2}$MEANING2\${color}\n\n\n"
	printf "error\n"
else
	# with romaji
	ROMAJI=$(echo $MEANING | awk -F"; " '{print $NF}')
	MEANING="${MEANING%;*}"
	printf "\${color $COLOR1}\${font $FONT1}\${alignr}$KANJI\${color}\n\${voffset -120}\${color $COLOR2}\${font $FONT2} \${color}\${color $COLOR3}\${font $FONT3}$ONREADING\${color}\n\${color $COLOR2}\${font $FONT2} \${color}\${color $COLOR3}\${font $FONT3}$KUNREADING\${color}\n\${color $COLOR2}\${font $FONT2} \${color}\${color $COLOR3}\${font $FONT2}$MEANING\${color}\n\n\n"



	# with romaji
	ROMAJI2=FONT1
	MEANING2="${MEANING2%;*}"
	printf "\${color $COLOR1}\${font $FONT1}\${alignr}$KANJI2\${color}\n\${voffset -120}\${color $COLOR2}\${font $FONT2} \${color}\${color $COLOR3}\${font $FONT3}$ONREADING2\${color}\n\${color $COLOR2}\${font $FONT2} \${color}\${color $COLOR3}\${font $FONT3}$KUNREADING2\${color}\n\${color $COLOR2}\${font $FONT2} \${color}\${color $COLOR3}\${font $FONT2}$MEANING2\${color}\n\n\n"




fi

# print empty line(s) after conky line
newLine $NLAFTER