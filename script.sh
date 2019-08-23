while IFS= read line
do
  url=${line%$'\r'}
  #curl -s "$URL" >> data.html
  echo $url>> sam.html && curl -s $url >> sam.html
done < $1
