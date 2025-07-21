The source for the data is:

https://www.data.gv.at/katalog/de/dataset/nachtigungsstatistik-karnten
direct link to download:
https://gis.ktn.gv.at/OGD/Wirtschaft_Tourismus/Naechtigungsstatistik_TJ_2008_09.csv

We use a slightly simplified version of the dataset, given as tourism.csv. The data is a csv file with utf8 encoding and , (comma) as separating character.
The dataset is in German, but it should be possible for everyone to translate the few involved special terms. Feel free to contact us or fellow students if you are struggling with translation.
It contains the following columns:

Tourismusjahr, dtype: int64
  Year of the observation
Unterkunft, dtype: object
  Type of accommodation. Includes hotels of different comfort levels, vacation homes, campign sites, et cetera.
Herkunft, dtype: object
  Origin of the travellers. Split into states in Austria, Germany, countries in Europe and elsewhere in the world. Some countries are aggregated (e.g. "Übriges Asien").
  The file origin_category.csv contains a categorization of all origin values into four groups: Austria, Germany, Europe, International (as in "rest of the world").
  This categorization may be useful for presenting the data.
Ankünfte, dtype: int64
  Amount of arrivals in given year, in given type of accommodation, by travellers of given origin.
Übernachtungen, dtype: int64
  Amount of nights spent in given year, in given type of accommodation, by travellers of given origin.

