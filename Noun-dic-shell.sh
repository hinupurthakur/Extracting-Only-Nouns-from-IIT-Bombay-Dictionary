#sh Noun-dic-shell.sh
input="/home/nupur/anusaaraka/Anu_data/default-iit-bombay-shabdanjali-dic.txt"
a=$(awk '/_noun/ { if($2 ~ /_/) print}' $input)
echo "$a" > ./nouns_with_multiple_mng.txt
#b=$(awk '/[^[:upper:] ]/' nouns_with_multiple_mng.txt)
#echo "$b" 
sed -r  '/^[A-Z.-]*s*_noun/d' < nouns_with_multiple_mng.txt > nouns_with_multiple_mng_wo_abb.txt
#sed -r  '/[A-Za-z]^[A-Z.]*[a-z.]*_noun/d' < nouns_with_multiple_mng.txt > nouns_with_multiple_mng_wo_abb.txt
