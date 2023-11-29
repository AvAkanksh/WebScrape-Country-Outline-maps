# WebScrape-Country-Outline-maps
This repo is to just memorize all the country outline maps, to be good at worldle game https://worldle.teuteuf.fr/

This is bash script i used to download all the images
```bash
while read -r line;
IFS=':' read -r code country <<< "$line"; 
aria2c https://staging.teuteuf-assets.pages.dev/data/worldle/countries/$code/vector.svg -o $country.svg ;
done <<< $(curl https://staging.teuteuf-assets.pages.dev/data/worldle/locale/countries-en.json | jq -r '.[] |   .code + ":" + .name  ' | tr "[:upper:]" "[:lower:]" )
```

