#Get rating
# > 7 - Good
# < 7 - Average

input=$1
if [ -z "$input" ]; then
   echo Input Movie Name Missing
   exit
fi

percent=$curl -s https://www.themoviedb.org/movie/955555-3|grep "user_score_chart"| grep  data-percent|xargs -n1|grep data-percent|awk -F = '{print $2}'

echo  percent - $percent

if [ "$percent" -ge 70 ]; then
   echo Good
else
   echo Average
fi
