# Set N to be the number of latest news to fetch
  NEWS=$(echo -e $(curl --silent https://www.archlinux.org/feeds/news/ | awk ' NR == 1 {N = 3 ; while (N) {print;getline; if($0 ~ /<\/item>/) N=N-1} ; sub(/<\/item>.*/,"</item>") ;print}'))
  # Remove some tags 
  NEWS=$(echo -e $NEWS | \
  awk '{
    # uncomment to remove first line which is usually not a news item
    sub(/<lastBuildDate[^>]*>([^>]*>)/,"");sub(/<language[^>]*>([^>]*>)/,"");sub(/<title[^>]*>([^>]*>)/,"");sub(/<link[^>]*>([^>]*>)/,""); 
    while (sub(/<guid[^>]*>([^>]*>)/,"")); 
    while (sub(/<dc:creator[^>]*>([^>]*>)/,""));
    while (sub(/<description[^>]*>([^>]*>)/,"")); print }' | \
  sed -e ':a;N;$!ba;s/\n/ /g')
  echo -e "$(echo -e $NEWS | \
    sed -e 's/&amp;/\&/g
    s/&lt;\|&#60;/</g
    s/&gt;\|&#62;/>/g
    s/<\/a>/£/g
    s/href\=\"/§/g
    s/<title>/\\n\\n :: \\e[01;34m/g; s/<\/title>/\\e[00m ::/g
    s/<link>/\\n [ \\e[01;36m/g; s/<\/link>/\\e[00m ]\\n/g
    s/<p\( [^>]*\)\?>\|<br\s*\/\?>/\n/g
    s/<b\( [^>]*\)\?>\|<strong\( [^>]*\)\?>/\\e[01;30m/g; s/<\/b>\|<\/strong>/\\e[00;37m/g
    s/<i\( [^>]*\)\?>\|<em\( [^>]*\)\?>/\\e[41;37m/g; s/<\/i>\|<\/em>/\\e[00;37m/g
    s/<u\( [^>]*\)\?>/\\e[4;37m/g; s/<\/u>/\\e[00;37m/g
    s/<code\( [^>]*\)\?>/\\e[00m/g; s/<\/code>/\\e[00;37m/g
    s/<a[^§|t]*§\([^\"]*\)\"[^>]*>\([^£]*\)[^£]*£/\\e[01;31m\2\\e[00;37m \\e[01;34m[\\e[00;37m \\e[04m\1\\e[00;37m\\e[01;34m ]\\e[00;37m/g
    s/<li\( [^>]*\)\?>/\n \\e[01;34m*\\e[00;37m /g
    s/<!\[CDATA\[\|\]\]>//g
    s/\|>\s*<//g
    s/ *<[^>]\+> */ /g
    s/[<>£§]//g')" 