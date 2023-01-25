[out:json][timeout:100];

(
    {{geocodeArea:Stone County, Mississippi}};
    {{geocodeArea:George County, Mississippi}};
    {{geocodeArea:Pearl River County, Mississippi}};
)->.searchArea;

(
    way[highway=motorway][!surface](area.searchArea);
    way[highway=trunk][!surface](area.searchArea);
    way[highway=primary][!surface](area.searchArea);
    way[highway=secondary][!surface](area.searchArea);
    way[highway=tertiary][!surface](area.searchArea);
    way[highway=unclassified][!surface](area.searchArea);
    way[highway=residential][!surface](area.searchArea);
);
out geom;