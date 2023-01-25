[out:json][timeout:100];

(
    {{geocodeArea:Stone County, Mississippi}};
    {{geocodeArea:George County, Mississippi}};
    {{geocodeArea:Pearl River County, Mississippi}};
)->.searchArea;

(
    way[highway=motorway][highway=trunk][highway=primary][highway=secondary][highway=tertiary][highway=unclassified][highway=residential][!surface](area.searchArea);
);
out geom;