while read -r line;
do IFS=':' read -r code country <<< "$line"; 
aria2c https://staging.teuteuf-assets.pages.dev/data/worldle/countries/$code/vector.svg -o $country.jpeg ;
done <<< $(curl https://staging.teuteuf-assets.pages.dev/data/worldle/locale/countries-en.json | jq -r '.[] |   .code + ":" + .name  ' | tr "[:upper:]" "[:lower:]" )
