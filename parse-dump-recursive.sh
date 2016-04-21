#/bin/bash
#
# Рекурсивный парсинг дампов страниц, в которых есть нужные ссылки
#

for x in $( find . -type d )
do
    if ! [ -e "$x/dump.txt" ]; then
        echo "$x/dump.txt not exists!"
        continue
    fi
    grep -o "http:.*radikal.*jpg\b" $x/dump.txt | grep -v livejournal > $x/links.txt
done

